-module(duplicate). 
-export([duplicate/2]). 

duplicate(0,_) -> 
   []; 
duplicate(N,Term) when N > 0 ->
   [Term|duplicate(N-1,Term)]. 
