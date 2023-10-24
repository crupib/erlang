-module(mystring).
-export([start/0]).
start() ->
  MyStr = "Haskell in 8 Hours",
  io:format("~s~n",[MyStr]).
