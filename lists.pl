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

% Check if first and last elements are same
check_1_2([H, H]).
check_1_2([H, _ | T]) :- check_1_2([H | T]).

% Even elements of a list
show_even([_]) :- write("").
show_even([]) :- write("").
show_even([_, H | T]) :-
    write(H),
    nl,
    show_even(T).

% Sum of even elements of a list
sum_even([], 0).
sum_even([_], 0).
sum_even([_, H | T], Sum) :-
    sum_even(T, Sum1),
    Sum is Sum1 + H.

% Reverse a list
rev_list([], X, X).
rev_list([H | T], X, L) :- rev_list(T, X, [H | L]).
