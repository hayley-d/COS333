father(bill, jake).

father(bill, shelley).

father(jake, ted).

father(ron, liz).
mother(mary, jake).
mother(mary, shelley).
mother(janet, ted).
mother(shelley, liz).

isSibling(X,Y) :-
    X \== Y,
    (
        (mother(M, X), mother(M, Y));
        (father(F, X), father(F, Y))
    ).

nephewNiece(X,Y):-
    X \== Y,
    (
      (father(Z,X),isSibling(Z,Y));
      (mother(M,X),isSibling(M,Y))
    ).

