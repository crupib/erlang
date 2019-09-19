-module(dbconnect). 
-export([start/0]). 

start() ->
   odbc:start(), 
   {ok, Ref} = odbc:connect("DSN = mariadb:192.168.99.203;UID = root;PWD = lennon6969", []), 
   io:fwrite("~p~n",[Ref]).
