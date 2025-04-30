-module(function8).
-export([multiply/2,start/0]).
multiply(A,B) ->
  C = A*B,
  io:format("~w~n",[C]).
start()->
  MyVar = fun()->
    MyStr = "I am an anonymous function",
    io:format("~s~n",[MyStr])
  end,
  MyVar(),
  multiply(100,2).
