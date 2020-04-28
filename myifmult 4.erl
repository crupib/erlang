-module(myifmult). 
-export([start/0]). 
start() -> 
   A = 5, 
   B = 6, 
   if 
      A == B -> 
         io:fwrite("A is equal to B~n"); 
      A < B -> 
         io:fwrite("A is less than B~n"); 
      B > A -> 
         io:fwrite("B is greater than A~n"); 
      true -> 
         io:fwrite("False~n") 
   end.
