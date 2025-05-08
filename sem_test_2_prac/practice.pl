% Rules
monster(wyvern).
monster(leshen).
monster(kikimora).
monster(fiend).
monster(griffin).
monster(basilisk).

witcher(geralt).
witcher(vesemir).
witcher(coen).
witcher(lambert).

contract(geralt, wyvern, novigrad).
contract(geralt, leshen, velen).
contract(vesemir, kikimora, skellige).
contract(geralt, fiend, skellig).
contract(yen, fiend, novigrad).
contract(vesemir, fiend, ard_skellig).
contract(coen, griffin, whiteorchard).
contract(jaskier, basilisk, kaer_morhen).

witcher_contracts(X,Y) :- 
    witcher(X),
    monster(Y),
    contract(X,Y,_).

multiple_contracts(X) :-
    witcher(X),
    contract(X,Y,_),
    contract(X,Z,_),
    Y \== Z.
    
witcher_without_monster(X) :-
    witcher(X),
    \+ contract(X,_,_).

