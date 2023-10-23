% hello world program
-module(helloworld). 
-writer("Bill Crupi").
-edition("2.0").
-date("2023/10/22").
-export([start/0]). 

start() -> 
   io:format("Hello,\t world asshole!\n"),
   io:fwrite("Hello,\n world cunt!\n"),
   io:format("He said: \"OK!\"\n"),
   A = 200.00,
   B = 300.00,
   io:format("~f~n",[A]),
   io:format("~e~n",[B]),
   C = 100,
   D = 2,
   Product = C * D,
   io:format("~w~n",[Product]),
   io:format("~w~n",[100+2]),
   io:format(my_Atom_@),
   io:format("~n"),
   io:format(100=<2),
   io:format("~n"),
   MyList=[1,2,3,4,5],
   io:format("~w~n",[length(MyList)]),
   MyTuple = {1,a,2,b,3,c},
   io:format("~w~n",[tuple_size(MyTuple)]).
