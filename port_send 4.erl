-module(port_send). 
-export([start/0]). 

start() ->
   {ok, Socket} = gen_udp:open(8789), 
   io:fwrite("~p~n",[Socket]), 
   io:fwrite("~p~n",[gen_udp:send 
   (Socket,"localhost",8789,"Hello")]).
