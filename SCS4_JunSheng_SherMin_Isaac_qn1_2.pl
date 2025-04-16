% sumsum is a competitor of appy
competitor(sumsum, appy).

% sumsum developed galacticas3
developed(sumsum, galacticas3).

% galacticas3 is smart_phone_technology
smart_phone_technology(galacticas3).

% stevey stole galacticas3
stole(stevey, galacticas3).

% stevey is boss of appy
boss(stevey,appy).

% X is a rival of Y (if X is a competitor of Y)
rival(X, Y):-
    competitor(X, Y).

% X is a business (if X is smart_phone_technology, and Y developed X)
business(X):-
    smart_phone_technology(X),
    developed(Y, X).

% X is unethical (if X is boss of Y, and X stole Z, and Z is business, and W developed Z, and W is a rival of Y)
unethical(X):-
    boss(X, Y),
    stole(X, Z),
    business(Z),
    developed(W, Z),
    rival(W, Y).


