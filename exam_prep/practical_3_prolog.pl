% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.
person(peter).
person(mary).
person(tom).
person(lilly).
person(joseph).
person(rob).
married(peter,mary).
married(lilly,joseph).
invited(mary,tom).

liveTogether(X,Y) :-
married(X,Y);
married(Y,X).

inRelationship(X) :-
married(X,_);
married(_,X).


visiting(X,Y) :-
    invited(Y,X);
    invited(Z,X),
    married(Y,Z).

livesAlone(X) :-
    \+ married(X,_),
    \+ invited(X,_),
    \+ married(_,X),
    \+ invited(_,X).

getZeroValues([], []) :- !.

getZeroValues([0 | T], [0 | ZT]) :-
    getZeroValues(T, ZT), !.

getZeroValues([H | T], ZT) :-
    H =\= 0,
    getZeroValues(T, ZT), !.


getPositiveValues([],[]) :- !.
getPositiveValues([H|T],[H|Z]) :-
    H >= 0,
    getPositiveValues(T,Z), !.

getPositiveValues([H|T],Z) :-
    H < 0,
    getPositiveValues(T,Z), !.

getNegativeValues([],[]) :- !.
getNegativeValues([H|T],[H|Z]) :-
    H < 0,
    getNegativeValues(T,Z),
    !.
getNegativeValues([H|T],Z):-
    H >= 0,
    getNegativeValues(T,Z),!.

monotonicallyDecreasing([]) :- !.
monotonicallyDecreasing([_]) :- !.
monotonicallyDecreasing([F,S|T]) :-
    F > S,
    monotonicallyDecreasing([S|T]), !.

stripPositivesAbsNegativesIncZeros([],[]) :- !.
stripPositivesAbsNegativesIncZeros([H|T],Z) :-
    H > 0,
    stripPositivesAbsNegativesIncZeros(T,Z), !.

stripPositivesAbsNegativesIncZeros([H|T],[X|Z]) :-
    H < 0,
    X is -1*H,
    stripPositivesAbsNegativesIncZeros(T,Z), !.

stripPositivesAbsNegativesIncZeros([H|T],[H|Z]) :-
    H =:= 0,
    stripPositivesAbsNegativesIncZeros(T,Z), !.
