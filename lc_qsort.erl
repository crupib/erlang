-module(lc_qsort).
-export([lc_quicksort/1]).
%% basic quicksort function.
lc_quicksort([]) -> [];
lc_quicksort([Pivot|Rest]) ->
    lc_quicksort([Smaller ||  Smaller <- Rest, Smaller =< Pivot])
    ++ [Pivot] ++
    lc_quicksort([Larger ||  Larger <- Rest, Larger > Pivot]).
