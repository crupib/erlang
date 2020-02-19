-module(tail_fac).
-export([tail_fac/1,tail_fac/2,start/0]). 

tail_fac(N) -> tail_fac(N,1). 
tail_fac(0, Acc) -> Acc; 
tail_fac(N,Acc) when N > 0 -> tail_fac(N-1,N*Acc). 

start() -> 
   X = 5, 
   Y = tail_fac(X), 
   io:fwrite("~w~n",[Y]).