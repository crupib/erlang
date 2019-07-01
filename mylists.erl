-module(mylists).
-compile(export_all).
map(_, [])     -> [];               %% (1)
map(F,  [H|T]) -> [F(H)|map(F, T)].   %% (2)
sum([H|T]) -> H + sum(T); %% (3)
sum([])    -> 0.          %% (4)
