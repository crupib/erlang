-module(lc_quicksort).
-export([start/0, lc_quicksort/1]).
%% basic quicksort function.
lc_quicksort([]) -> [];
lc_quicksort([Pivot|Rest]) ->
    lc_quicksort([Smaller ||  Smaller <- Rest, Smaller =< Pivot])
    ++ [Pivot] ++
    lc_quicksort([Larger ||  Larger <- Rest, Larger > Pivot]).
    
start() ->
  X = [4,7,3,22,9,6,8,2,1,5],
  Q = lc_quicksort(X),
  io:fwrite("~w~n",[X]),
  io:fwrite("~w~n",[Q]).
