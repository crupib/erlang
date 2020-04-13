-module(quicksort).
-export([start/0, quicksort/1]).
%% basic quicksort function.
quicksort([]) -> [];
quicksort([Pivot|Rest]) ->
    {Smaller, Larger} = partition(Pivot,Rest,[],[]),
    quicksort(Smaller) ++ [Pivot] ++ quicksort(Larger).

partition(_,[], Smaller, Larger) -> {Smaller, Larger};
partition(Pivot, [H|T], Smaller, Larger) ->
    if H =< Pivot -> partition(Pivot, T, [H|Smaller], Larger);
       H >  Pivot -> partition(Pivot, T, Smaller, [H|Larger])
    end.
start() ->
  X = [4,7,3,22,9,6,8,2,1,5],
  Q = quicksort(X),
  io:fwrite("~w~n",[X]),
  io:fwrite("~w~n",[Q]).
