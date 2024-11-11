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
 % 6. Calculer la longueur d’une liste L
length([], 0).
length([_|T], N) :-
    length(T, N1),
    N is N1 + 1.

% 7. Vérifier si la liste a un nombre pair d’éléments
even([]).
even([_,_|T]) :-
    even(T).

% 8. Concaténer deux listes sans append
concat([], L, L).
concat([H|T], L, [H|R]) :-
    concat(T, L, R).

% 9. Vérifier si une liste est un palindrome
palindrome(L) :-
    reverse(L, L).
