merge([], L1, L1).
merge([H | T], L1, [H | L2]) :- merge(T, L1, L2).

sublist([], _).
sublist([X|XS], [X|YS]) :- sublist(XS, YS).
sublist([X|XS], [_|YS]) :- sublist([X|XS], YS).

select_element(Element, List, Remaining) :-
    merge(Before, [Element | After], List),
    merge(Before, After, Remaining).