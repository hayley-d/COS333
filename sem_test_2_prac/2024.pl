tenant(alice, tony).
tenant(tom, jane).
tenant(joe, tony).
tenant(mary, jane).

address(alice, pineStreet12).
address(tom, shillingLane15).
address(joe, duncanRoad6).
address(mary, shillingLane15).
address(jonathan, pineStreet12).

shared(Y) :-
    tenant(X,Y),
    tenant(Z,Y),
    address(X,P),
    address(Z,P),
    X \== Z.

monster_location(wyvern, novigrad).
monster_location(leshen, velen).
monster_location(kikimora, skellige).
monster_location(fiend, ard_skellig).
monster_location(fiend, novigrad).

location_monsters(Location, List) :- 
    List is monster_location(_,Location).
    
