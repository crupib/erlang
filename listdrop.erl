-module(listdrop).
-export([falls/1]).

falls(List) -> falls(List,[]).
falls([],Results) -> lists:reverse(Results);
falls([Head|Tail], Results) -> falls(Tail,
      [drop_tuples:fall_velocity(Head)|Results]).
