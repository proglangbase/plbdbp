%%
%%  Copyright © 2024 Christopher Augustus. All rights reserved.
%%
-module(plbdb).
-export([acquire/0, acquire/1, html/1, start/1]).
-include("../../dep/plbcom/code/erlang/filename.hrl").
-include("../../dep/plbcom/code/erlang/plbnames.hrl").

-define(NAME_SERVICE_ATOM,    ?PLB_NAME_SERVICE_DB).
-define(NAME_SERVICE_STRING,  atom_to_list(?NAME_SERVICE_ATOM)).
-define(PATH_SOURCE,          ?DIRNAME_SOURCE++"/../..").
-define(PATH_LOG,             io_lib:format("~s/log/~s.log",
                                [?PATH_SOURCE, ?NAME_SERVICE_STRING])).
-define(CMD_BQN,              io_lib:format("bqn ~s/code/array/plbhtml.bqn ",
                                [?PATH_SOURCE])).

acquire() -> acquire(?MODULE).

acquire(Module) ->
  case global:whereis_name(?NAME_SERVICE_ATOM) of
    Pid when is_pid(Pid) -> Pid;
    _ -> init(Module)
  end.

init(Module) ->
  filelib:ensure_dir(?PATH_LOG),
  Log = logger(?PATH_LOG),
  Log("~s:start", [Module]),
  spawn(?MODULE, start, [Module]).

html(Route) -> os:cmd(?CMD_BQN++Route).

logger(Path) ->
  {ok, Log} = file:open(Path, [append]),
  Prefix    = io_lib:format(?NAME_SERVICE_STRING++" ~p: ", [self()]),
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
  Log = logger(?PATH_LOG),
  Log("connecting to ~s", [?PLB_NAME_NODE_WEB]),
  try
    plb_ctl:connect_node(?PLB_NAME_NODE_WEB, ?PLB_COOKIE_NODE_WEB),
    global:register_name(?NAME_SERVICE_ATOM, self()),
    Log("service started", []),
    Loop = looper(Log, Module),
    Loop()
  catch
    {error,  Info} -> Log("error: ~p", [Info]);
    {Source, Msg}  -> Log("~p: ~p", [Source, Msg])
  end.
