%% @author Bill Crupi <crupib@gmail.com> [https://github.com/crupib]
%% @doc Functions calculating velocites achieved by objects
%% dropped in a vacuum.
%% @reference from <a href="http://shop.oreilly.com/product/0636920025818.do">
%% Introducing Erlang</a>,
-module(drop2).
-export([fall_velocity/1]).
%% @doc Calculates the velocity of an object falling on Earth 
%% as if it were in a vacuum (no air resistance). The distance is 
%% the height from which the object falls, specified in meters, 
%% and the function returns a velocity in meters per second. 
-spec(fall_velocity(number()) -> number()).
fall_velocity(Distance) -> math:sqrt(2 * 9.8 * Distance).
