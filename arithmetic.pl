% All sorts of math

% Calculator
add(X, Y, Z) :- Z is X + Y.
sub(X, Y, Z) :- Z is X - Y.
mul(X, Y, Z) :- Z is X * Y.
div1(X, Y, Z) :- Z is X / Y.

% Mod of num
modulus(X, Y, Z) :- Z is X mod Y.

% Square root
sqroot(X, Z) :- Z is sqrt(X).

% Exponent
expo(X, Y, Z) :- Z is X**Y.

% Positive, Negative or Zero
check_num(X) :-
    X =:= 0,
    write("Zero").
check_num(X) :-
    X > 0,
    write("Positive").
check_num(X) :-
    X < 0,
    write("Negative").

% Odd Even check
checkOddEven(X) :-
    X mod 2 =:= 0,
    write("Even").
checkOddEven(X) :-
    X mod 2 =\= 0,
    write("Odd").

% Display N to M natural numbers
show_natural_range(X, Y) :-
    write(X),
    nl,
    X1 is X + 1,
    X1 =< Y,
    show_natural_range(X1, Y).

% Sum of N natural numbers using AP
sum_n_natural(N) :-
    Sum is (N*(N+1))/2,
    write(Sum).

% Sum of N natural numbers using recursion
sum_natural_rec(0, 0).
sum_natural_rec(N, Sum) :-
    N > 0,
    N1 is N - 1,
    sum_natural_rec(N1, Sum1),
    Sum is Sum1 + N.

% Sum of squares of n natural numbers using formula
sum_n_sq(N) :-
    Sum is (N*(N+1)*(2*N+1)/6),
    write(Sum).

% Sum of squares of n natural numbers using recursion
sum_n_sq_rec(0, 0).
sum_n_sq_rec(X,Sum) :-
    X > 0,
    X1 is X - 1,
    sum_n_sq_rec(X1, Sum1),
    Sum is Sum1 + X**2.

% Sum of inverse of n natural numbers
sum_inv(0, 0).
sum_inv(X, Sum) :-
    X > 0,
    X1 is X - 1,
    sum_inv(X1, Sum1),
    Sum is Sum1 + 1 / X.

% GCD of two numbers
gcd(0, X, X).
gcd(X, Y, Z) :-
    X >= Y,
    X1 is X - Y,
    gcd(X1, Y, Z).
gcd(X, Y, Z) :-
    X =< Y,
    X1 is Y - X,
    gcd(X1, X, Z).

% LCM of two numbers
lcm(X, Y, Z) :-
    gcd(X, Y, A),
    Z is (X*Y)/A.

% Fibonacci nth number
fibo(0, 0).
fibo(1, 1).
fibo(X, N) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibo(X1, N1),
    fibo(X2, N2),
    X is X1 + X2.

% Fibonacci series
fibo_series(N) :-
    N >= 0,
    fibo(X, N),
    write(X),
    nl,
    N1 is N - 1,
    fibo_series(N1).

% Factorial of a number
fac(1, 1).
fac(N, X) :-
    N > 1,
    N1 is N - 1,
    fac(N1, X1),
    X is X1 * N.

% Minimum of three numbers
min_3(A, B, C) :-
    A =< B,
    A =< C,
    write(A).
min_3(A, B, C) :-
    B =< A,
    B =< C,
    write(B).
min_3(A, B, C) :-
    C =< B,
    C =< A,
    write(C).
