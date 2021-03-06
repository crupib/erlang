-module(header). 
-export([start/0]). 
-include("user.hrl"). 

start() -> 
   P = #person{name = "John",id = 1}, 
   Q = #person{name = "Mary",id = 2}, 
   Z = #person{name = "Debbie",id = 3}, 
   T = #person{name = "Joann",id = 4}, 
   S = #person{name = "Nina",id = 5}, 
   io:fwrite("~p~n",[P#person.id]), 
   io:fwrite("~p~n",[P#person.name]),
   io:fwrite("~p~n",[Q#person.name]),
   io:fwrite("~p~n",[Z#person.name]),
   io:fwrite("~p~n",[T#person.name]),
   io:fwrite("~p~n",[S#person.name]),
   io:fwrite("~w~n",[?macro1(1,2)]).
