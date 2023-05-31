-module(tree).
-export ([start/0,empty/0, insert/3, lookup/2, has_value/2]).
empty() -> {node, 'nil'}.
insert(Key, Val, {node, 'nil'}) ->
	{node,{Key,Val, {node, 'nil'}, {node, 'nil'}}};
insert(NewKey, NewVal, {node, {Key, Val, Smaller, Larger}}) when NewKey < Key ->
	{node, {Key, Val, insert(NewKey, NewVal, Smaller), Larger}};
insert(NewKey, NewVal, {node,{Key,Val,Smaller,Larger}}) when NewKey > Key ->
	{node, {Key, Val, insert(NewKey, NewVal, Smaller), Larger}};
insert(Key,Val, {node, {Key, _, Smaller, Larger}}) ->
	{node, {Key, Val, Smaller, Larger}}.
lookup(_,{node,'nil'}) -> undefined;
lookup(Key,{node, {Key, Val, _, _}}) ->
   {ok, Val};
lookup (Key, {node, {NodeKey, _, Smaller, _}}) when Key < NodeKey -> lookup(Key, Smaller);
lookup(Key, {node,{_,_,_,Larger}}) ->
       lookup(Key,Larger).
%% looks for a given value 'Val' in the tree.
%%has_value(_, {node, 'nil'}) ->
%%false;
%%has_value(Val, {node, {_, Val, _, _}}) ->
%%true;
%%has_value(Val, {node, {_, _, Left, Right}}) ->
%%case has_value(Val, Left) of
%%true -> true;
%%false -> has_value(Val, Right)
%%end.
has_value(Val, Tree) ->
try has_value1(Val, Tree) of
false -> false
catch
true -> true
end.
has_value1(_, {node, 'nil'}) ->
false;
has_value1(Val, {node, {_, Val, _, _}}) ->
throw(true);
has_value1(Val, {node, {_, _, Left, Right}}) ->
has_value1(Val, Left),
has_value1(Val, Right).
start() ->
   T1 = insert("Jim Woodland", "jim.woodland@gmail.com", empty()),
   T2 = insert("Mark Anderson", "i.am.a@hotmail.com", T1),  
   Addresses = insert("Anita Bath", "abath@someuni.edu", insert("Kevin Robert",    "myfairy@yahoo.com", insert("Wilson Longbrow", "longwil@gmail.com", T2))),
   io:format("Hello ,~p!~n",[lookup("Anita Bath", Addresses)]),
   has_value("abath@someuni.edu",Addresses).
