-module(web). 
-export([start/0]). 

start() ->
   inets:start(), 
   Pid = inets:start(httpd, [{port, 8081}, {server_name,"httpd_test"}, 
   {server_root,"/Users/williamcrupi/Desktop"},{document_root,"/Users/williamcrupi/Desktop/website"},
   {bind_address, "localhost"}]), io:fwrite("~p",[Pid]).
