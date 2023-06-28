%%%-------------------------------------------------------------------
%%% @author williamcrupi
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Jun 2023 10:57 AM
%%%-------------------------------------------------------------------
-module(dolphins).
-author("williamcrupi").
-export([start/0, dolphin1/0, dolphin2/0, dolphin3/0]).
%% API
dolphin1() ->
  receive
    do_a_flip->
      io:format("How about no?~n");
    fish ->
      io:format("So long and thanks for all the fish!~n");
    _ ->
      io:format("Heh, we're smarter than you humans.~n")
  end.
dolphin2() ->
   receive
     {From, do_a_flip} ->
          From ! "How about no?";
     {From, fish} ->
          From ! "So long and thanks for all the fish!";
     _ ->
          io:format("Heh, we're smarter than you humans.~n")
   end.
dolphin3() ->
   receive
     {From, do_a_flip} ->
         From ! "How about no?",
         io:format("How about no.~n"),
         dolphin3();
     {From, fish} ->
       From ! "So long and thanks for all the fish!",
       io:format("So long and thanks for all the fish!~n");
     _ ->
          io:format("Heh, we're smarter than you humans.~n"),
          dolphin3()
   end.
start() ->
  Dolphin3 = spawn(dolphins, dolphin3,[]),
  Dolphin3 ! Dolphin3 ! {self(), do_a_flip},
  Dolphin3 ! Dolphin3 ! {self(), unknown_message},
  Dolphin3 ! Dolphin3 ! {self(), fish}.
