-module(fizzbuzz).
-compile([export_all]).

-include_lib("eunit/include/eunit.hrl").

playto(MaxPlays) ->
  lists:foreach(
    fun(N) ->
        io:format("~p: ~p~n", [N, play(N)])
    end,
  lists:seq(0, MaxPlays)).

play(N) when N rem 3 == 0, N rem 5 == 0 -> fizzbuzz;
play(N) when N rem 3 == 0 -> fizz;
play(N) when N rem 5 == 0 -> buzz;
play(N) -> N.


play_2_is_2_test() ->
  ?assert(play(2) == 2).

play_3_is_fizz_test() ->
  ?assert(play(3) == fizz).

play_5_is_buzz_test() ->
  ?assert(play(5) == buzz).

play_6_is_fizz_test() ->
  ?assert(play(6) == fizz).

play_10_is_buzz_test() ->
  ?assert(play(10) == buzz).

play_15_is_fizzbuzz_test() ->
  ?assert(play(15) == fizzbuzz).
