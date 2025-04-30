-module(while_8).
-export([start/0]).
while([ ]) ->
  io:format("~s~n",[""]);
while([First|Rest]) ->
  io:format("~c~n",[First]),
  while(Rest).
start()->
  while("good").
