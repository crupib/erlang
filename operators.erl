-module(operators).
-export([start/0]).
start() ->
  A = 100,
  B = 2,
  Result1 = A+B,
  Result2 = A-B,
  Result3 = A*B,
  Result4 = A/B,
  Result5 = A div B,
  Result6 = A rem B,
  io:format("~w~n",[Result1]),
  io:format("~w~n",[Result2]),
  io:format("~w~n",[Result3]),
  io:format("~w~n",[Result4]),
  io:format("~w~n",[Result5]),
  io:format("~w~n",[Result6]).
