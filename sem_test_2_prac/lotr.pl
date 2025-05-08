% Define Facts
good(frodo).
good(aragorn).
evil(sauron).
evil(gollum).
fellowship([frodo, sam, gandalf, aragorn, legolas, gimli, boromir, pippin]).

% Define Rules
can_fight(X,Y) :- good(X), evil(Y).
can_fight(X,Y) :- evil(X), good(Y).

is_member(X, [X | _]) :- !. 
is_member(X, [_ | Tail]) :- is_member(X, Tail).

% Own length Function
list_length([],0) :- !.
list_length([_ | Tail], Length) :- 
    list_length(Tail, TailLength), 
    Length is TailLength + 1.

% Own reverse function
rev([],[]) :- !.
rev([Head | Tail], Reversed) :-
    rev(Tail, Revtail),
    concat(Revtail, [Head], Reversed).

concat([],List, List) :- !.
concat([Head | Tail], List, [Head | Result]) :-
    concat(Tail, List, Result).
