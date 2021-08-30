-module(ask3).
-export([line/0]).

line() ->
  Planemo = get_planemo(),
  Distance = get_distance(),
  drop_tuples:fall_velocity({Planemo, Distance}).


get_planemo() ->
  io:format("Which are you on?~n"),
  io:format(" 1. Earth ~n"),
  io:format(" 2. Earth's Moon ~n"),
  io:format(" 3. Mars~n"),
  Answer = io:get_line("Which? > "),
  Value = hd(Answer),
  char_to_planemo(Value).

char_to_planemo(Char) ->
  if
   [Char] == "1" -> earth;
   Char == $2 -> moon;
   Char == 51 -> mars
  end.
get_distance() ->
  Input = io:get_line("How far? (meters) > "),
  Value = string:strip(Input, right, $\n),
  {Distance, _} = string:to_integer(Value),
  Distance.

