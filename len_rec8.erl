-module(len_rec8).
-export([len/1,start/0]).
len([]) -> 0;
len([A|Z]) -> 1 + len(Z).
start()->
  MyList = [1,2,3,4,5],
  Size = len(MyList),
  io:format("~w~n",[Size]).
