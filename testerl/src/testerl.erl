%%%-------------------------------------------------------------------
%%% @author williamcrupi
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 30. May 2023 3:08 PM
%%%-------------------------------------------------------------------
-module(testerl).
-author("williamcrupi").

%% API
-export([map/2,tail_len/1,tail_len/2,start/0,incr/1,decr/1]).
tail_len(L) -> tail_len(L,0).
tail_len([], Acc) -> Acc;
tail_len([_|T], Acc) -> tail_len(T,Acc+1).
map(_,[]) -> [];
map(F,[H|T]) -> [F(H)|map(F,T)].
incr(X) -> X + 1.
decr(X) -> X - 1.

start() ->
  X = [1,2,3,4],
  Y = tail_len(X),
  io:fwrite("~w~n",[Y]),
  Z=map(fun incr/1,X),
  io:fwrite("~w~n",[Z]).