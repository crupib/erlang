%%%-------------------------------------------------------------------
%%% @author williamcrupi
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. Jun 2023 1:35 PM
%%%-------------------------------------------------------------------
-module(kitchen).
-author("williamcrupi").
%% API
-export([init/0, start/1,fridge2/1,store/2, take/2]).
store(Pid, Food) ->
    Pid ! {self(), {store,Food}},
    receive
      {Pid, Msg} -> Msg
    end.
take (Pid, Food) ->
     Pid ! {self(), {take, Food}},
     receive
       {Pid, Msg} -> Msg
     end.

fridge2(FoodList) ->
    receive
      {From, {store, Food}} ->
        From ! {self(),ok},
        io:format("~p~n",[Food]),
        fridge2([Food|FoodList]);

      {From, {take, Food}} ->
          case lists:member(Food, FoodList) of
              true ->
                From ! {self(), {ok, Food}},
                io:format("~p~n",[Food]),
                fridge2(lists:delete(Food, FoodList));

              false ->
                From ! {self(), not_found},
                io:format("Not_found~n"),
                fridge2(FoodList)
          end;
      terminate ->
        ok
    end.

start(FoodList) ->
  spawn(?MODULE,fridge2, [FoodList]).
init() ->
  Pid = kitchen:start([rhubarb, dog, hotdog]),
  kitchen:take(Pid, dog),
  kitchen:take(Pid, dog).


