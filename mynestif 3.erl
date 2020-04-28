-module(mynestif). 
-export([start/0]). 

start() -> 
   A = 4, 
   B = 6, 
   if 
      A < B ->
         if 
            A > 5 -> 
               io:fwrite("A is greater than 5~n"); 
            true -> 
               io:fwrite("A is less than 5~n")
         end;
      true -> 
         io:fwrite("A is greater than B~n") 
   end.

