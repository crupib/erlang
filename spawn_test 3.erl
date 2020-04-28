-module(spawn_test). 
-export([main/0, call/2]). 

call(Arg1, Arg2) -> 
   io:format("~p ~p~n", [Arg1, Arg2]). 
main() -> 
   Pid = spawn(?MODULE, call, ["hello", "process"]), 
   is_process_alive(Pid),
   io:fwrite("~p~n",[is_process_alive(Pid)]),
   io:fwrite("~p~n",[Pid]).
