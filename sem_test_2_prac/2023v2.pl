father(joe, jane).
father(joe, dan).
father(bill, ted).
father(dan, alice).
mother(mary, jane).
mother(mary, dan).
mother(jane, ted).
mother(linda, alice).

cousin(X,Y) :-
    father(Z,X),
    father(V,Y),
    sibling(Z,V);
    mother(Z,X),
    mother(V,Y),
    sibling(Z,V);
    father(Z,X),
    mother(V,Y),
    sibling(Z,V);
    father(Z,Y),
    mother(V,X),
    sibling(Z,V).

sibling(X,Y) :-
    X \== Y,
    father(Z,X),
    father(Z,Y);
    X \== Y,
    mother(M,X),
    mother(M,Y).

    
