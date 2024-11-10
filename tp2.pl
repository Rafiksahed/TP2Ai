% 1

element(X, [X|_]).
element(X, [_|T]) :-
    element(X, T).

% 2
first(E, [E|_]).

% 3
last([E], E).
last([_|T], E) :-
    last(T, E).

% 4
penultimate([E,_], E).
penultimate([_|T], E) :-
    penultimate(T, E).

% 5
del_k(X, [X|T], 1, T).
del_k(X, [H|T], K, [H|R]) :-
    K > 1,
    K1 is K - 1,
    del_k(X, T, K1, R).
