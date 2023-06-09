#10. Write a Prolog program to implement reverse (L, R) where List L is original and List R is reversed list. 

conc([], L, L).
conc([H|T], L, [H|L1]) :-
    conc(T, L, L1).
    
reverse([], []).
reverse([H|T], R) :-
    reverse(T, R1),
    conc(R1, [H], R).

