-module(overload8).
-export([sum/2,sum/3,start/0]).
sum(A,B) ->
   Result1  = A+B,
   io:format("~w~n",[Result1]).
sum(A,B,C) ->
   Result2  = A+B+C,
   io:format("~w~n",[Result2]).
start()->
  sum(10,20),
  sum(10,20,30).
