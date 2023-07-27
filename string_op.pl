% String operations

% Palindrome

palind(Input) :-
    string_chars(Input, CharList),
    palind(CharList, []).
palind(List, List).
palind([_ | Tail], Tail).
palind([Head | Tail], Acc) :-
    palind(Tail, [Head | Acc]).    
    
% Substring check
% here X is the smol one, S is the large one
substr(X, S) :-
    string_to_list(X, XL),
    string_to_list(S, SL),
    append(_, T, SL),       % append is a built in function
    append(XL, _, T),
    X \= [], !.

% Check the data type
check_for_num(X) :- number(X).  % check_for_number(10) -> true.
check_for_str(X) :- string(X).  % check_for_str("hello") -> true.
