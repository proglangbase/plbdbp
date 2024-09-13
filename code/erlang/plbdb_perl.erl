%%
%%  Copyright © 2024 Christopher Augustus. All rights reserved.
%%
-module(plbdb_perl).
-export([acquire/0, html/1]).
-include("../../dep/plbcom/code/erlang/config.hrl").

-define(BQN_CMD_FMT,  "bqn " ++?SOURCE_PATH++"/../array/plbdata.bqn").
-define(PERL_CMD_FMT, "perl "++?SOURCE_PATH++"/../array/plbhtml.pl").
-define(HTML_CMD_FMT, ?BQN_CMD_FMT++" ~p | "++?PERL_CMD_FMT).

acquire() -> plbdb:acquire(?MODULE).

html(Route) -> os:cmd(io_lib:format(?HTML_CMD_FMT, [Route])).
