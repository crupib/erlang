-module(tail_zip). 
-export([reverse/1,tail_zip/2,start/0]). 
reverse(L) -> reverse(L,[]).
reverse([],Acc) -> Acc;
reverse([H|T],Acc) -> reverse(T, [H|Acc]).
tail_zip(X,Y) -> reverse(tail_zip(X,Y,[])).
tail_zip([],[],Acc) -> Acc;
tail_zip([X|Xs],[Y|Ys], Acc) -> tail_zip(Xs,Ys, [{X,Y}|Acc]).
start() -> 
  X = [1,2,3],
  Z = [a,b,c],
  Y = tail_zip(X,Z),
  io:fwrite("~w~n",[Y]). 
