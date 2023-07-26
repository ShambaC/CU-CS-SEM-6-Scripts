% String operations

% Palindrome

palind(Input) :-
    string_chars(Input, CharList),
    palind(CharList, []).
palind(List, List).
palind([_ | Tail], Tail).
palind([Head | Tail], Acc) :-
    palind(Tail, [Head | Acc]).    