-module(macro). 
-export([start/0]). 
-define(a,1). 
-define(macro1(X,Y),{X+Y}). 
start() -> 
   io:fwrite("~w~n",[?a]),
   io:fwrite("~w~n",[?macro1(1,2)]).
