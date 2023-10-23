-module(convert2).
-export([inch/2, cent/2]).
inch(Num1,inches) ->
   Num1/2.54.
cent(Num2,centimeters) ->
   Num2*2.54.
