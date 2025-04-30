-module(if_state_82).
-export([myfun/2]).
myfun(A,B)->
  if
   A == 10 ->
        io:format("A=10~n",[]);
   B == 20 ->
        io:format("B=20~n",[]);
   A == 30, B==40 ->
        io:format("A = 30, B = 40~n",[]);
   A == 50; B==60 ->
        io:format("A = 50, B = 60~n",[])
  end.
