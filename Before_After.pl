my_append([], L, L).
my_append([H|T], L, [H|R]) :-
    my_append(T, L, R).

select_element(Element, List, Remaining) :-
    my_append(Before, [Element|After], List),
    my_append(Before, After, Remaining).