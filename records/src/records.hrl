%%%-------------------------------------------------------------------
%%% @author williamcrupi
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Jun 2023 3:05 PM
%%%-------------------------------------------------------------------
-author("williamcrupi").
%% this is a .hrl (header) file.
-record(included, {some_field,
  some_default = "yeah!",
  unimaginative_name}).
