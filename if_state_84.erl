-module(if_state_84).
-export([start/0]).
start()->
  X = 20, Y = 20,
  if
   X =< Y ->
      if
        X < Y ->
          io:format("X<Y~n");
        true ->
          io:format("X=Y~n")
        end;
  true ->
     io:format("X > Y~n")
  end.
