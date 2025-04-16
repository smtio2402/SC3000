% [DEFINE RELATIONSHIP]
% prince_charles is offspring of queen_elizabeth
offspring(prince_charles, queen_elizabeth).

% princess_ann is offspring of queen_elizabeth
offspring(princess_ann, queen_elizabeth).

% prince_andrew is offspring of queen_elizabeth
offspring(prince_andrew, queen_elizabeth).

% prince_edward is offspring of queen_elizabeth
offspring(prince_edward, queen_elizabeth).


% [DEFINE GENDER]
male(prince_charles).
male(prince_andrew).
male(prince_edward).
female(princess_ann).


% [DEFINE BIRTHORDER]
% prince_charles is 1st in birth_order
birth_order(prince_charles, 1).

% princess_ann is 2nd in birth_order
birth_order(princess_ann, 2).

% prince_andrew is 3rd in birth_order
birth_order(prince_andrew, 3).

% prince_edward is 4th in birth_order
birth_order(prince_edward, 4).


% [OLD ROYAL SUCCESSION RULE]
% X is part of succession_line_old (if X is male, and X is offspring of queen_elizabeth, and X is has a recorded birth_order)
succession_line_old(X):-
    male(X),
    offspring(X, queen_elizabeth),
    birth_order(X, _).

% X is part of succession_line_old (if X is female, and X is offspring of queen_elizabeth, and X is has a recorded birth_order)
succession_line_old(X):-
    female(X),
    offspring(X, queen_elizabeth),
    birth_order(X, _).
