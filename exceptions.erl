-module (exceptions).
-compile(export_all).
sword(1) -> throw(slice);
sword(2) -> erlang:errer(cut_arm);
sword(3) -> exit(cut_leg);
sword(4) -> throw(punch);
sword(5) -> exit(cross_bridge).
talk() -> "blah blah".
black_knight(Attack) when is_function(Attack, 0) ->
    try Attack() of
      _ -> "None shall pass."
    catch
      throw:slice -> "It is but a scratch.";
      throw:cut_arm -> "I've had worse.";
      exit:cut_leg -> "Come on you pansy!";
      _:_ -> "Just a flesh wound."
     end.

errors(F) ->
    try F() of
      _ -> ok
    catch
       error:Error -> {error, caught, Error}
    end.
exits(F) ->
    try F() of
      _ -> ok
    catch
      exit:Exit -> {exit, caught, Exit}
    end.
throws(F) ->
    try F() of
      _ -> ok
    catch
       Throw -> {throw, caught, Throw}
    end.
whoa() ->
    try
      talk(),
      _Knight = "None shall pass!",
      _Doubles =  [N*2 || N <- lists:seq(1,100)],
      throw(up),
      _WillReturnThis = tequila
    of
      tequila -> "Hey, this worked!"
    catch
      Exception:Reason -> {caught, Exception, Reason}
    end.
im_impressed() ->
    try
        talk(),
        _Knight = "None shall pass!",
        _Doubles = [N*2 || N <- lists:seq(1,100)],
        throw(up),
        _WillReturnThis = tequila
    catch
      Exception:Reason -> {caught, Exception, Reason}
    end.
catcher(X,Y) ->
    case catch X/Y of
        {'EXIT', {badarith,_}} -> "uh oh";
        N -> N
    end.
one_or_two(1) -> return;
one_or_two(2) -> throw(return).

