% Task 1
% Facts
person(peter).
person(mary).
person(tom).
person(lilly).
person(joseph).
person(rob).

married(peter, mary).
married(lilly, joseph).

invited(mary, tom).

% rules  
liveTogether(X, Y) :- married(X, Y).
liveTogether(X, Y) :- married(Y, X).

visiting(X, Y) :- invited(Y, X).
visiting(X, Y) :-
    liveTogether(Y, Z),
    invited(Z, X).

livesAlone(X) :-
    person(X),
    \+ liveTogether(X, _),
    \+ visiting(X, _).

% Task 2
getZeroValues([], []) :- !.

getZeroValues([0 | T], [0 | ZT]) :-
    getZeroValues(T, ZT), !.

getZeroValues([H | T], ZT) :-
    H =\= 0,
    getZeroValues(T, ZT), !.

% Task 3 
monotonicallyDecreasing([]) :- !.

monotonicallyDecreasing([_]) :- !.

monotonicallyDecreasing([H1, H2 | T]) :-
    H1 >= H2,
    monotonicallyDecreasing([H2 | T]), !.


