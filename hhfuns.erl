-module (hhfuns).
-compile(export_all).
one() -> 1.
two() -> 2.
add(X,Y) -> X() + Y().
increment([]) -> [];
increment([H|T]) -> [H+1|increment(T)].
decrement([]) -> [];
decrement([H|T]) -> [H-1|decrement(T)].
map(_,[]) -> [];
map(F,[H|T]) -> [F(H)|map(F,T)].
incr(X) -> X + 1.
decr(X) -> X - 1.
base(A) ->
    B = A + 1,
    F = fun() -> A * B end,
    F().
base2(A) ->
    B = A + 1,
    F = fun() -> A / B end,
    F().
a() ->
   Secret = "pony",
   fun() -> Secret end.
b(F) ->
   "a/0's password is "++F().
    (fun(C) -> C = 2 end)(2).
