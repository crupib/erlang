%% @author J D Eisenberg <jdavid.eisenberg@gmail.com>
%% @doc Functions for calculating areas of geometric shapes.
%% @copyright 2013 J D Eisenberg
%% @version 0.1

-module(geom).
-export([area/3]).

%% @doc Calculates the area of a shape, given the
%% shape and two of the dimensions. Returns the product
%% of its arguments for a rectangle, one half the
%% product of the arguments for a triangle, and
%% math:pi times the product of the arguments for
%% an ellipse.

-spec(area(atom(), number(), number()) -> number()).

area(Shape, A, B) when A >= 0, B >= 0 ->
  case Shape of
    rectangle -> A * B;
    triangle -> (A * B) / 2.0;
    ellipse -> math:pi() * A * B
  end.
