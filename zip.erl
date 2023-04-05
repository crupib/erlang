-module(zip). 
-export([reverse/1,zip/2,lenient_zip/2]). 
reverse(L) -> reverse(L,[]).
reverse([],Acc) -> Acc;
reverse([H|T],Acc) -> reverse(T, [H|Acc]).
lenient_zip([],_) -> [];
lenient_zip(_,[]) -> [];
lenient_zip([X|Xs],[Y|Ys]) -> [{X,Y}|lenient_zip(Xs,Ys)].
zip(X,Y) -> reverse(zip(X,Y,[])).
zip([],[],Acc) -> Acc;
zip([X|Xs],[Y|Ys], Acc) -> zip(Xs,Ys, [{X,Y}|Acc]).
