#17. Write a Prolog program to implement delete_nth (N, L, R) that removes the element on Nth position from a list L to generate a list R. 

delete_nth(1, [_|T], T).
delete_nth(N, [H|T], [H|R]) :- 
     N > 1, 
     N1 is N-1, 
    delete_nth(N1, T, R).

    