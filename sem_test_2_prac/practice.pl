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

evolves_into(igglybuff, jigglytuff).
evolves_into(jigglypuff, wigglytuff).
evolves_into(happiny, chansey).
evolves_into(chansey, blissey).
evolves_into(cleffa, clefairy).
evolves_into(clefairy, clefable).
evolves_into(gastly, haunter).
evolves_into(haunter, gengar).

trainer(hayley, gengar).
trainer(ash, gastly).
trainer(mallow, happiny).
trainer(hayley, clefable).

trainers_evolve_pokemon(Trainer) :-
    trainer(Trainer,Poke),
    trainer(_, Y),
    same_evo_tree(Y,Poke).

same_evo_tree(X,Y) :- evolves_into(X,Y);evolves_into(Y,X).
same_evo_tree(X,Y) :- 
    evolves_into(Y,Z),
    evolves_into(Z,X);
    evolves_into(X,Z),
    evolves_into(Z,Y).

pokemon_without_trainer(X) :- \+ trainer(_,X).

baby_pokes(X) :-
    \+ evolves_into(_,X).
   
