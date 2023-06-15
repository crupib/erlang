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
-include("records.hrl").
%% API
-export ([first_robot/0,car_factory/1, admin_panel/1,adult_section/1]).
-record(robot, {name,
                type=industrial,
                hobbies,
                details=[]}).

car_factory(CorpName) ->
  #robot{name=CorpName, hobbies="building cars"}.
repairman(Rob) ->
  Details = Rob#robot.details,
  NewRob = Rob#robot{details=["Repaired by repairman"|Details]},
  {repaired, NewRob}.
-record(user, {id, name, group, age}).
included() -> #included{some_field="Some value"}.
admin_panel(#user{name=Name, group=admin}) ->
  Name ++ " is allowed!";
admin_panel(#user{name=Name}) ->
  Name ++ " is not allowed".

adult_section(U = #user{}) when U#user.age >= 18 ->
  allowed;
adult_section(_) ->
  forbidden.
first_robot() ->
  P = #robot{name = "Mechatron",
         type=industrial,
         hobbies = "bj",
         details=["Moved by a small man inside"]},
  io:fwrite("~p~n",[P#robot.name]),
  io:fwrite("~p~n",[P#robot.type]),
  io:fwrite("~p~n",[P#robot.details]),

  C = car_factory("Jokeswagen"),
  io:fwrite("~p~n",[C#robot.name]),
  io:fwrite("~p~n",[C#robot.hobbies]),
  Crusher = #robot{name="Crusher", hobbies = ["Crushing people","Petting cats"]},
  io:fwrite("~p~n",[Crusher#robot.name]),
  io:fwrite("~p~n",[Crusher#robot.hobbies]),
  AP=admin_panel(#user{id=1,name="ferd",group=admin,age=96}),
  io:fwrite("~p~n",[AP]),
  AS=admin_panel(#user{id=2,name="you",group = users, age=66}),
  io:fwrite("~p~n",[AS]),
  AS2=adult_section(#user{id=21,name="Bill",group = users, age=72}),
  io:fwrite("~p~n",[AS2]),
  AS3=adult_section(#user{id=22,name="Noah",group = users, age=13}),
  io:fwrite("~p~n",[AS3]),
  RP=repairman(#robot{name="Ulbert", hobbies=["trying to have feelings"]}),
  io:fwrite("~p~n",[RP]),
  io:fwrite("~p~n",[included()]).

