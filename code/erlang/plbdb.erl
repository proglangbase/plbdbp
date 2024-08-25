%%
%%  Copyright © 2024 Christopher Augustus. All rights reserved.
%%
-module(plbdb).
-export([acquire/0,init/0]).

-define(MODULE_PATH         , filename:dirname(proplists:get_value(source, module_info(compile)))).
-define(NAME_SINGLETON      , ?MODULE_STRING++"_single").
-define(ATOM_SINGLETON      , list_to_atom(?NAME_SINGLETON)).
-define(LOG_PATH            , ?MODULE_PATH++"/../../log/"++?NAME_SINGLETON).

acquire() ->
  case whereis(?ATOM_SINGLETON) of
    Pid when is_pid(Pid) -> Pid;
    _ -> spawn(?MODULE, init, [])
  end.

init() ->
  register(?ATOM_SINGLETON, self()),
  {ok,_Log} = disk_log:open([{name,?LOG_PATH},{type,wrap},{size,{999999,9}}]),
  loop().

loop() ->
  receive
    {html,Route,Ref,Pid} ->
                  Pid ! {html,html(Route),Ref,self()},
                  log("html called from ~p~n", [Pid]),      loop();
    {ping,Pid} -> log("pingged by ~p~n.", Pid), Pid ! pong, loop();
    {stop,Pid} -> log("stopped by ~p~n.", Pid), disk_log:close(), ok;
    Msg        -> log("unknown message ~p~n.", [Msg]),      loop()
  end.

log(Format, Values) -> disk_log:alog(?LOG_PATH,
  io_lib:format(?NAME_SINGLETON ++ " ~p: "
                ++ Format, lists:flatten([self(), Values]))).

html(Route) -> os:cmd(
  "bqn " ++ filename:dirname(filename:dirname(
              proplists:get_value(source, module_info(compile))))
         ++ "/array/plbarray.bqn " ++ Route).
