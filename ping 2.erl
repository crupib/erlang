-module(ping).
	-export([ping/0]).
	-export([run/0]).
run () ->
	Pid = spawn(fun ping/0),
	Pid ! self(),
	receive
		pong ->ok
	end.
ping() ->
	receive
	    From -> From ! pong
	end.
