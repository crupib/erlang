-module(recursive2).
-export([fac/1,start/0]).

fac(0) -> 1;
fac(N) when N > 0 -> N*fac(N-1).

start() -> 
   X = fac(6), 
   io:fwrite("~w~n",[X]).
