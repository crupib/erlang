-module(sleep). 
-export([sleep/1,start/0]). 

sleep(T) ->
   receive 
   after T -> 
      true 
   end. 
   
start()->
   sleep(1000).
