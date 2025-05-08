% Calculate the length of the list
list_length([],0) :- !. % Base Case
list_length([_ | Tail], Len) :-
    list_length(Tail, TailLen),
    Len is TailLen + 1.

% Calculate the sum of elements in a list
sum_list([],0) :- !.
sum_list([Head | Tail], ListSum) :-
    sum_list(Tail, TailSum),
    ListSum is Head + TailSum.

% Find Max Element
max([X],X) :- !.
max([Head | Tail], Max) :-
    max(Tail, TailMax),
    (
        Head > TailMax -> Max = Head;
        Max = TailMax
    ).

% Base Case
modulo(X,Y,X) :- 
    X < Y,
    !.
% Case when divisor is 0
modulo(_,0,_) :- 
    write('Undefined'),
    !.
% Recursive Case
modulo(X,Y,Remainder) :-
    X >= Y,
    NewX is X - Y,
    modulo(NewX, Y, Remainder).

