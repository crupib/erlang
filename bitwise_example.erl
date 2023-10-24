-module(bitwise_example).
-export([start/0]).
start() -> 
  io:format("~w~n",[0011 band 0110]),
  io:format("~w~n",[0011 bor 0110]),
  io:format("~w~n",[0011 bxor 0110]).
