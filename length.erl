-module(length). 
-export([len/1]). 
%-export([len/1,start/0]). 

len([]) -> 0; 
len([_|T]) -> 1 + len(T). 

%start() -> 
%   X = [1,2,3,4,5,6,7,8,9,10,11,12,13,50], 
%   Y = len(X), 
%   io:fwrite("~w~n",[Y]).
