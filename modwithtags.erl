-module(modwithtags). 
-import(io,[fwrite/1]).
-author("bill"). 
-version("1.0"). 
-export([start/0]). 

start() -> 
   fwrite("Hello World!\n").
