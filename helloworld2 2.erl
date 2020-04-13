% hello world program
-module(helloworld2). 
-export([start/0]). 

start() -> 
   io:fwrite("~w\n",[1+1]),
   io:fwrite(2 =< 3),
   io:fwrite("\n"),
   Bin1 = <<10,20>>,
   X = binary_to_list(Bin1),
   io:fwrite("~w\n",[X]),
   io:fwrite(atom1),
   io:fwrite("\n"),
   P = {john,24,{june,25}} , 
   io:fwrite("~w\n",[tuple_size(P)]),
   M1 = #{name=>john,age=>25}, 
   io:fwrite("~w\n",[map_size(M1)]),
   L = [10,20,30] , 
   io:fwrite("~w\n",[length(L)]).
