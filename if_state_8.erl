-module(if_state_8).
-export([start/0]).
start()->
  X = 10, Y = 20,
  if X > Y ->
     io:format("X > Y~n");
  true ->
     io:format("X < Y~n") 
  end.
