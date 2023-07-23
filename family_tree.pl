/*
The family tree :

Pam       Tom
    \    /   \
     \  /     \
      Bob      Liz
     /   \
    /     \
  Ann      Pat
           /
          /
        Jim
*/

% Relations

parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

% Sex

female(pam).
male(tom).
male(bob).
female(liz).
female(ann).
female(pat).
male(jim).

% Derived Relations

child(X, Y) :- parent(X, Y).
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
mother(X, Y) :- parent(X, Y), female(X).
father(X, Y) :- parent(X, Y), male(X).
sibling(X, Y) :- child(X, Z), child(Y, Z).
sister(X, Y) :- parent(Z, X), parent(Z, Y), female(X), X \= Y.
grandfather(X, Y) :- grandparent(X, Y), male(X).
happy(X) :- parent(X, _). % Apparently you are happy if you have a kid
has2child(X) :- parent(X, Y), parent(X, Z), Y \= Z.
aunt(X) :- parent(Y, _), sister(X, Y).