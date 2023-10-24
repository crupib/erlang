-module(mymap).
-export([start/0]).
start() ->
   MyMap=#{flower=>rose,color=>red},
   io:format("~w~n",[map_size(MyMap)]).
