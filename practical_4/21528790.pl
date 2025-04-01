% Base Case
stripPositivesAbsNegativesIncZeros([], []).

% Case for positive numbers
stripPositivesAbsNegativesIncZeros([H|T], X) :-
    H > 0,
    stripPositivesAbsNegativesIncZeros(T, X).

% Case for negative numbers
stripPositivesAbsNegativesIncZeros([H|T], [AbsH|X]) :-
    H < 0,
    AbsH is abs(H),
    stripPositivesAbsNegativesIncZeros(T, X).

% Case for zero
stripPositivesAbsNegativesIncZeros([0|T], [1|X]) :-
    stripPositivesAbsNegativesIncZeros(T, X).

