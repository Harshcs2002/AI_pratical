#15. Write a Prolog program to implement maxlist(L, M) so that M is the maximum number in the list. 

max(X,Y,M) :- X > Y, M is X.
max(X,Y,M) :- X =< Y, M is Y.

maxlist([X],X).
maxlist([H|T],M):-maxlist(T,M1),M is max(H,M1).

