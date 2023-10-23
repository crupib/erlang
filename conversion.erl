-module(conversion).
-export([change/1]).
change({centimeter, Num1}) ->
 {inch, Num1 / 2.54};      % the function body is a tuple 
change({inch, Num2}) -> 
{centimeter, Num2 * 2.54}. % the function body is a tuple
