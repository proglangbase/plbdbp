%%
%%  Copyright © 2024 Christopher Augustus. All rights reserved.
%%
-module(plbdb).
-export([acquire/0, acquire/1, html/1, start/1]).
-include("../../plbcom/code/erlang/config.hrl").

-define(SERVICE_NAME,   ?DB_SERVICE_NAME).
-define(SERVICE_STRING, atom_to_list(?SERVICE_NAME)).
-define(ROOT_PATH,      ?SOURCE_PATH++"/../..").
-define(LOG_PATH,       io_lib:format("~s/log/~s.log", [?ROOT_PATH, ?SERVICE_STRING])).
-define(BQN_CMD,        io_lib:format("bqn ~s/code/array/plbarray.bqn", [?ROOT_PATH])).
-define(HTML_CMD_FMT,   ?BQN_CMD ++ " ~p").

acquire() -> acquire(?MODULE).

acquire(Module) ->
  case global:whereis_name(?SERVICE_NAME) of
    Pid when is_pid(Pid) -> Pid;
    _ -> init(Module)
  end.

init(Module) ->
  filelib:ensure_dir(?LOG_PATH),
  Log = logger(?LOG_PATH),
  Log("~s:start", [Module]),
  spawn(?MODULE, start, [Module]).

html(Route) ->
  os:cmd(io_lib:format(?HTML_CMD_FMT, [Route])).

logger(Path) ->
  {ok, Log} = file:open(Path, [append]),
  Prefix    = io_lib:format(?SERVICE_STRING++" ~p: ", [self()]),
  fun(Format, Values) when is_list(Values) ->
    io:format(Log, Prefix++Format++"~n", Values)
  end.

looper(Log, Module) -> 
  fun Loop() ->
    receive
      {html,Route,Ref,Pid} ->
        Pid ! {html, Module:html(Route), Ref, self()},
        Log("html called from ~p", [Pid]),     
        Loop();

      {ping,Pid} -> Log("pinged by ~p",  [Pid]), Pid ! pong, Loop();
      {stop,Pid} -> Log("stopped by ~p", [Pid]);
      Msg        -> Log("unknown message: ~p", [Msg]), Loop()
    end
  end.

start(Module) ->
  Log = logger(?LOG_PATH),
  Log("connecting to ~s", [?WEB_NODE_NAME]),
  try
    plb_ctl:connect_node(?WEB_NODE_NAME, ?WEB_NODE_COOKIE),
    global:register_name(?SERVICE_NAME, self()),
    Log("service started", []),
    Loop = looper(Log, Module),
    Loop()
  catch
    {error,  Info} -> Log("error: ~p", [Info]);
    {Source, Msg}  -> Log("~p: ~p", [Source, Msg])
  end.


