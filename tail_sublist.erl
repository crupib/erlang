-module(tail_sublist). 
-export([reverse/1,tail_sublist/2,start/0]). 
reverse(L) -> reverse(L,[]).
reverse([],Acc) -> Acc;
reverse([H|T],Acc) -> reverse(T, [H|Acc]).
tail_sublist(L, N) -> reverse(tail_sublist(L, N, [])).
tail_sublist(_, 0, SubList) -> SubList;
tail_sublist([], _, SubList) -> SubList;
tail_sublist([H|T], N, SubList) when N > 0 -> tail_sublist(T, N-1, [H|SubList]).
start() -> 
  X = [1,2,3,4,5,6,7,8,9,10],
  Y = tail_sublist(X,0),
  io:fwrite("~w~n",[Y]). 
