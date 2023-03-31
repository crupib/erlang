-module(userless).
-export([add/2,hello/0, greet_and_add_two/1, greet/2]).
-define(HOUR, 3600). % in seconds
-define(sub(X,Y),X-Y).
add(A,B) ->
    A + B.
hello() ->
   io:format("Hello, world!~n").
greet_and_add_two(X) ->
  hello(),
  add(X,2),
  io:fwrite("~w",[?sub(5,3)]),
  io:format("~n"),
  io:fwrite("~w",[?HOUR]),
  io:format("~n"),
  io:format("~n").
greet(male, Name) ->
  io:format("Hello, Mr. ~s!~n", [Name]);
greet(female, Name) ->
  io:format("Hello, Mrs. ~s!~n", [Name]);
greet(_, Name) ->
  io:format("Hello, you transgender fuck face ~s!~n", [Name]).
