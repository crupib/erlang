-module(recurse8).
-export([fact/1,start/0]).
fact(Arg) when Arg == 0 -> 1;
fact(Arg) when Arg > 0 -> Arg*fact(Arg-1).
start()->
  Result = fact(5),
  io:format("~w~n",[Result]).
