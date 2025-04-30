-module(forloop_8).
-export([for/1,start/0]).
for(0) ->
  [];
for(Times) when Times > 0 ->
  io:format("Good!~n"),
  for(Times-1).
start()->
  for(3).
