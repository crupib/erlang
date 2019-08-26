%% @author J D Eisenberg <jdavid.eisenberg@gmail.com>
%% @doc Recursive function for calculating GCD 
%% of two numbers using Dijkstra's algorithm.
%% @copyright 2013 J D Eisenberg
%% @version 0.1

-module(dijkstra).
-export([gcd/2]).

%% @doc Calculates the greatest common divisor of two
%% integers. Uses Dijkstra's algorithm, which does not
%% require any division.

-spec(gcd(number(), number()) -> number()).

gcd(M, N) when M == N ->
  M;

gcd(M,N) when M > N ->
  gcd(M - N, N);

gcd(M, N) ->
  gcd(M, N - M).

