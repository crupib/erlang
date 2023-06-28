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
-export([start/0,fridge2/1]).

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
start() ->
  Pid = spawn(kitchen, fridge2,[[bacon_soda]]),
  Pid ! {self(),{store, milk}},
  Pid ! {self(),{store, bacon}},
  Pid ! {self(),{take, bacon}},
  Pid ! {self(),{take, turkey}}.