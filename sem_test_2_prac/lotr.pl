% Define Facts
good(frodo).
good(aragorn).
evil(sauron).
evil(gollum).

% Define Rules
can_fight(X,Y) :- good(X), evil(Y).
can_fight(X,Y) :- evil(X), good(Y).
