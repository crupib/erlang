%%%-------------------------------------------------------------------
%%% @author williamcrupi
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Jun 2023 3:43 PM
%%%-------------------------------------------------------------------
-module(records).
-author("williamcrupi").

%% API
-export ([first_robot/0]).
-record(robot, {name,
                type=industrial,
                hobbies,
                details=[]}).
first_robot() ->
  P = #robot{name = "Mechatron",
         type=industrial,
         hobbies = "bj",
         details=["Moved by a small man inside"]},
  io:fwrite("~p~n",[P#robot.name]).
