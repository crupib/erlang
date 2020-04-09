-module(tail_duplicate). 
-export([tail_duplicate/2,tail_duplicate/3,start/0]). 

tail_duplicate(N,Term) -> 
   tail_duplicate(N,Term,[]).

tail_duplicate(0,_,List) ->
   List; 

tail_duplicate(N,Term,List) when N > 0 ->
   tail_duplicate(N-1,Term,[Term|List]), 
   io:fwrite("~w,~n",[List]).

start() -> 
  tail_duplicate(5,'Crupi'). 
