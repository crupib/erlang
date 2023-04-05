-module(sublist). 
-export([reverse/1,tail_sublist/2]). 
reverse(L) -> reverse(L,[]).
reverse([],Acc) -> Acc;
reverse([H|T],Acc) -> reverse(T, [H|Acc]).
tail_sublist(L, N) -> reverse(tail_sublist(L, N, [])).
tail_sublist(_, 0, SubList) -> SubList;
tail_sublist([], _, SubList) -> SubList;
tail_sublist([H|T], N, SubList) when N > 0 -> tail_sublist(T, N-1, [H|SubList]).
