%%
%%  Copyright © 2024 Steve Thames. All rights reserved.
%%
-module(plbdb_perl).
-export([acquire/0, html/1]).
-include("../../dep/plbcom/code/erlang/filename.hrl").

-define(BQN_CMD_FMT,  "bqn " ++?DIRNAME_SOURCE++"/../array/plbdata.bqn").
-define(PERL_CMD_FMT, "perl "++?DIRNAME_SOURCE++"/../array/plbhtml.pl").
-define(HTML_CMD_FMT, ?BQN_CMD_FMT++" ~p | "++?PERL_CMD_FMT).

acquire() -> plbdb:acquire(?MODULE).

html(Route) -> os:cmd(io_lib:format(?HTML_CMD_FMT, [Route])).
