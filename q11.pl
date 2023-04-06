#11. Write a program in PROLOG to implement palindrome (L) which checks whether a list L is a palindrome or not. 

conc([], L, L).
conc([H|T], L, [H|L1]) :-
    conc(T, L, L1).
    
reverse([], []).
reverse([H|T], R) :-
    reverse(T, R1),
    conc(R1, [H], R).
    
palindrome(L) :-
    reverse(L, L).
