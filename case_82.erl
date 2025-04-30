-module(case_82).
-export([start/0]).
start() ->
  Score = 60,
  case Score of
    Score when Score >= 60 ->
    io:format("You passed the examination~n");
    Score when Score < 60 ->
    io:format("You failed the examination~n")
  end.
