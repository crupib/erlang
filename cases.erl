%%%-------------------------------------------------------------------
%%% @author williamcrupi
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 18. Oct 2019 6:35 PM
%%%-------------------------------------------------------------------
-module(cases).
-export([start/0,insert/2,beach/1]).
insert(X,[]) ->
  [X];
insert(X,Set) ->
  case lists:member(X,Set) of
    true  -> Set;
    false -> [X|Set]
  end.

beach(Temperature) ->
  case Temperature of
    {celsius, N} when N >= 20, N =< 45 ->
      'favorable';
    {kelvin, N} when N >= 293, N =< 318 ->
      'scientifically favorable';
    {fahrenheit, N} when N >= 68, N =< 113 ->
      'favorable in the US';
    _ ->
      'avoid beach'
  end.
start() ->
X = 5,
Temperature = {celsius,20},
io:format(beach(Temperature)),
io:nl(),
Temperature1 = {kelvin,310},
io:format(beach(Temperature1)),
io:nl(),
Temperature2 = {fahrenheit,75},
io:format(beach(Temperature2)),
io:nl(),
Y = insert(X,[5,6,7,8]),
io:fwrite("~w~n",[Y]),
io:nl(),
Z = insert(X,[]),
io:fwrite("~w~n",[Z]),
io:nl(),
U = insert(X,[3,4]),
io:fwrite("~w~n",[U]),
io:nl().

