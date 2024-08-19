%%
%%  Copyright © 2024 Christopher Augustus. All rights reserved.
%%
-module(plbdb).
-export([acquire/0,init/0]).

-define(NAME_SINGLETON, list_to_atom(atom_to_list(?MODULE)++"_single")).

acquire() ->
  case whereis(?NAME_SINGLETON) of
    Pid when is_pid(Pid) -> Pid;
    _ -> spawn(?MODULE, init, [])
  end.

init() -> register(?NAME_SINGLETON, self()), loop().

loop() ->
  receive
    {html,Route,Ref,Pid} -> io:fwrite("html called from ~p~n", [Pid]),
                            Pid ! {html,html(Route),Ref,self()},  loop();
    {ping,Pid} -> log("pingged by ~p~n.", Pid), Pid ! pong,       loop();
    {stop,Pid} -> log("stopped by ~p~n.", Pid),                   ok;
    Msg        -> log("unknown message ~p~n.", [Msg]),            loop()
  end.

log(Format, Values) -> io:fwrite(
  atom_to_list(?NAME_SINGLETON) ++ " ~p: "
  ++ Format, lists:flatten([self(), Values])).

html(Route) -> os:cmd(
  "bqn " ++ filename:dirname(filename:dirname(
              proplists:get_value(source, module_info(compile))))
         ++ "/array/plbarray.bqn " ++ Route).
