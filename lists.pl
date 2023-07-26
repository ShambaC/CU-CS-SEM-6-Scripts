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

% First three elements same
same3([X, X, X | _]).

% Add element to the head of the list
% param: X => element to be added, L => list to be manipulated
add_1_head(X, L, [X | L]).

% Add element to the second position in a list
add_1_pos_2(X, [H | T], [H, X | T]).

% Last element of the list
show_last(X, [X | []]).
show_last(X, [_ | T]) :- show_last(X, T).

show_last3(X, [X, _ | []]).
show_last3(X, [_ | T]) :- show_last3(X, T).

% Second last element of the list
show_2_last(X, [_ | [X, _]]).
show_2_last(X, [_ | T]) :- show_2_last(X, T).

% Last two elements of the list
show_last_2([A, B]) :-
    write(A),
    nl,
    write(B).
show_last_2([_ | T]) :-
    show_last_2(T).

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

% Even positioned elements of a list
show_even([_]) :- write("").
show_even([]) :- write("").
show_even([_, H | T]) :-
    write(H),
    nl,
    show_even(T).

% Sum of even positioned elements of a list
sum_even([], 0).
sum_even([_], 0).
sum_even([_, H | T], Sum) :-
    sum_even(T, Sum1),
    Sum is Sum1 + H.

% Reverse a list
rev_list([], X, X).
rev_list([H | T], X, L) :- rev_list(T, X, [H | L]).

% Maximum in a list
maxlist([Max], Max).
maxlist([A, B | T], Max) :-
    A > B,
    maxlist([A | T], Max).
maxlist([A, B | T], Max) :-
    A =< B,
    maxlist([B | T], Max).

% Minimum in a list
minlist([Min], Min).
minlist([A, B | T], Min) :-
    A < B,
    minlist([A | T], Min).
minlist([A, B | T], Min) :-
    A >= B,
    minlist([B | T], Min).

% Show even elements in a list
show_even_e([]) :- write("").
show_even_e([H | T]) :-
    H mod 2 =:= 0,
    write(H),
    nl,
    show_even_e(T).
show_even_e([H | T]) :-
    H mod 2 =\= 0,
    show_even_e(T).

% Count odd elements
count_odd([], 0).
count_odd([H | T], Count) :-
    H mod 2 =\= 0,
    count_odd(T, Count1),
    Count is Count1 + 1.
count_odd([H | T], Count) :-
    H mod 2 =:= 0,
    count_odd(T, Count1),
    Count is Count1.

% Sum of even elemetns
sum_even_e([], 0).
sum_even_e([H | T], Sum) :-
    H mod 2 =:= 0,
    sum_even_e(T, Sum1),
    Sum is Sum1 + H.
sum_even_e([H | T], Sum) :-
    H mod 2 =\= 0,
    sum_even_e(T, Sum1),
    Sum is Sum1.

% Check if a list is ordered (ascending)
order_asc([_]).
order_asc([A, B | T]) :-
    A =< B,
    order_asc([B | T]).
