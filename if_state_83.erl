-module(if_state_83).
-export([start/0]).
start()->
  X = 10,
  Y = 20,
  if
   X == Y ->
     io:format("X=Y~n");
   X > Y ->
     io:format("X>Y~n");
   X == 0 ->
     io:format("X = 0~n");
   true ->
     io:format("X < Y~n")
  end.
