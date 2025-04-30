-module(case_8).
-export([start/0]).
start() ->
  Num = 10,
  case Num of
    10 -> io:format("The value of Num is 10~n");
    20 -> io:format("The value of Num is 20~n")
  end.
