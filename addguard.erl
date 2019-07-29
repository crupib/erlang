-module(addguard). 
-export([add/1,start/0]). 

add(X) when X>5 ->
   io:fwrite("~w~n",[X]). 
start() ->
   add(6). 
