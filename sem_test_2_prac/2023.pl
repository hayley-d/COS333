% Parent Relation
parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

% Sibling Relation
sibling(X,Y) :-
    parent(P, X),
    parent(P,Y),
    X \= Y.

% Cousin Relation
cousin(X, Y) :-
    parent(P, X),
    parent(P2, Y),
    sibling(P,P2),
    X \= Y.

father(joe, jane).
father(joe, dan).
father(bill, ted).
father(dan, alice).
mother(mary, jane).
mother(mary, dan).
mother(jane, ted).
mother(linda, alice).
