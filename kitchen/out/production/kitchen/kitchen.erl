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
-export([fridge2/1]).

fridge2(FoodList) ->
    receive
      {From, {store, Food}} ->
        From ! {self(),ok},
        fridge2([Food|FoodList]);
      {From, {take, Food}} ->
          case lists:member(Food, FoodList) of
              true ->
                From ! {self(), {ok, Food}},
                fridge2(lists:delete(Food, FoodList));
              false ->
                From ! {self(), not_found},
                fridge2(FoodList)
          end;
      terminate ->
        ok
    end.
