-module(what_the_if).
-export([mygoodif/2,oh_god/1,help_me/1,a/0,b/0,c/0]).
%%-export([mygoodif/2,heh_fine/0,oh_god/1,help_me/1,a/0,b/0,c/0]).
%heh_fine() ->
%    if 1 =:= 1 ->
%        works
%    end,
%    if 1 =:= 2; 1 =:= 1 ->
%        works
%    end,
%    if 1 =:= 2, 1 =:= 1 ->
%        fails
%    end.
oh_god(N) ->
    if N =:= 2 -> might_succeed;
    true -> always_does  %% This is Erlang's if's 'else!'
end.
a() ->
     io:format("a() ~n").
b() ->
     io:format("b() ~n").	
c() ->
     io:format("c() ~n").
help_me(Animal) ->
    Talk = if Animal == cat  -> "meow";
              Animal == beef -> "mooo";
              Animal == dog  -> "bark";
              Animal == tree -> "bark";
              true -> "fgdadfgna"
           end,
    {Animal, "says " ++ Talk ++ "!"}.
mygoodif(X,Y) ->
       if X > Y -> a()   
          ; true  -> b()  
       end.               
