-module(test).
-compile(export_all).
valid_time({Date = {Y,M,D}, Time = {H,Min,S}}) ->
	io:format("The  Date tuple (~p) : ~p/~p/~p~n",[Date,Y,M,D]),
        io:format("The Time tuple(~p) : ~p:~p:~p~n",[Time,H,Min,S]);
valid_time(_) ->
	io:format("Stop feeding me wrong data!!~n").
right_age(X) when X >= 16, X =< 104 ->
	true;
right_age(_) ->
	false.
wrong_age(X) when X < 16; X > 104 ->
    true;
wrong_age(_) ->
    false.
start() ->
   valid_time({{2013,12,12},{09,04,43}}),
   valid_time({{2013,12},{09,04,43}}),
   io:format("Right age ~p~n",[right_age(17)]),
   io:format("wrong age ~p~n",[wrong_age(17)]).
   
