-module(guard). 
-export([start/0,add/1]). 

add(A) -> 
   case A of 
      _ when A>10 ->  ok,io:format("The value of A is greater than 10~n"); 
      _ when A<10 ->  ok,io:format("The value of A is less than 10~n") 
   end.
start() ->
   add(1).   
