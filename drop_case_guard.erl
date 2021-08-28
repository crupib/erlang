-module(drop_case_guard).
-export([fall_velocity/2]).

fall_velocity(Planemo,Distance) when Distance >=0 -> 
Gravity = case Planemo of
  earth when Distance >= 0  -> 9.8;
  moon  when Distance >= 0  ->  1.6; 
  mars  when Distance >= 0  ->  3.71
end,
math:sqrt(2 * Gravity * Distance).
