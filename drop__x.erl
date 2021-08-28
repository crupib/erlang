-module(drop__x).
-export([fall_velocity/2]).
fall_velocity(_planmos,Distance) -> math:sqrt(2 * 9.8 * Distance).
