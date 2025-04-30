-module(guard8).
-export([myFun/1,start/0]).
myFun(Num) when Num < 100 ->
   io:format("~w~n",[Num]).
start()->
  myFun(99).
