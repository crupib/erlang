-module(anoyfunc). 
-export([start/0]). 

start() -> 
   Fn = fun() -> 
      io:fwrite("Anonymous Function~n") end,
   Fn().
