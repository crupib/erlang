-module(mywhile). 
-export([while/1,while/2, start/0]). 

while(L) -> while(L,0). 
while([], Acc) -> Acc;

while([H|T], Acc) ->
   io:fwrite("~w  ",[Acc]), 
   io:fwrite("~w~n",[H]), 
   while(T,Acc+1). 
   
   start() -> 
   X = [a,b,c,d], 
   while(X).
