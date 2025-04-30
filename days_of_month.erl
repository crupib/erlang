-module(days_of_month).
-export([length/2]).
length(Year,Month) ->
  Leap = if
    trunc(Year/400)*400 == Year ->
      leap;
    trunc(Year/100)*100 == Year ->
      not_leap;
    trunc(Year/4) * 4 == Year ->
      leap;
    true->
      not_leap
  end,
  case Month of
    september -> 30;
    april -> 30;
    june -> 30;
    november -> 30;
    february when Leap == leap -> 28;
    february -> 29;
    january -> 31;
    march -> 31;
    may -> 31;
    july -> 31;
    august -> 31;
    october -> 31;
    december -> 31
  end.
  
