-module (filter).
-compile(export_all).
%% only keep even numbers
even(L) -> lists:reverse(even(L,[])).
 
even([], Acc) -> Acc;
even([H|T], Acc) when H rem 2 == 0 ->
even(T, [H|Acc]);
even([_|T], Acc) ->
even(T, Acc).
 
%% only keep men older than 60
old_men(L) -> lists:reverse(old_men(L,[])).

old_men([], Acc) -> Acc;
old_men([Person = {male, Age}|People], Acc) when Age > 60 ->
    old_men(People, [Person|Acc]);
old_men([_|People], Acc) ->
    old_men(People, Acc).
filter(Pred,L) -> lists:reverse(filter(Pred,L,[])).
filter(_,[],Acc) -> Acc;
filter(Pred, [H|T], Acc) ->
   case Pred(H) of
     true -> filter(Pred, T, [H|Acc]);
     false -> filter(Pred, T, Acc)
   end.
