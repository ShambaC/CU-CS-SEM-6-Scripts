merge([], L1, L1).
merge([H | T], L1, [H | L2]) :- merge(T, L1, L2).

rev([], []).
rev([H | T], Reversed) :-
    rev(Tail, RevTail), merge(RevTail, [Head], Reversed).