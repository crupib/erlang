-module(mycase). 
-export([start/0]). 

start() -> 
   A = 11,
   case A of 
      5 -> io:fwrite("The value of A is 5~n"); 
      6 -> io:fwrite("The value of A is 6~n");
      7 -> io:fwrite("The value of A is 7~n");
      8 -> io:fwrite("The value of A is 8~n");
      9 -> io:fwrite("The value of A is 9~n");
      11 -> io:fwrite("The value of A is 11~n") 
   end.
