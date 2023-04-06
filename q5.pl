#5. Write a Prolog program to implement GCD of two numbers. 

gcd(X,X,X).
gcd(0,X,X).
gcd(X,0,X).
gcd(X,Y,G) :-
    X > Y,
    X1 is X - Y,
    gcd(X1,Y,G).
gcd(X,Y,G) :-
    X < Y,
    Y1 is Y - X,
    gcd(X,Y1,G).

