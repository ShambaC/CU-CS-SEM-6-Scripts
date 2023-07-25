% This file is all about list operations

% A list containing exactly two elements
ex2([_, _]).

% A list that doesnt contain exactly two elements
nex2([_]).
nex2([_, _, _ | _]).

% Show the second element of the list
show2(X, [_, X | _]).

% Show that the first and second element are same
same1_2([X, X | _]).

% Add element to the head of the list
% param: X => element to be added, L => list to be manipulated
add_1_head(X, L, [X | L]).

% Add element to the second position in a list
add_1_pos_2(X, [H | T], [H, X | T]).

% Last element of the list
show_last(X, [X | []]).
show_last(X, [_ | T]) :- show_last(X, T).

% Second last element of the list
show_2_last(X, [_ | [X, _]]).
show_2_last(X, [_ | T]) :- show_2_last(X, T).

% Display all elements of a list
show_all([]) :- write(" ").
show_all([H | T]) :-
    write(H),
    nl,
    show_all(T).

% Check if a number is a member of a list
mem(X, [X | _]).
mem(X, [_ | T]) :- mem(X, T).

% Merge two lists into a 3rd list           //This absolutely sucks
merge([], L1, L1).
merge([H | T], L1, [H | L2]) :- merge(T, L1, L2).