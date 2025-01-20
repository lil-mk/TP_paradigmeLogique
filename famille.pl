% Déclaration des faits
homme(jacques).
homme(paul).
homme(marc).
femme(marie).
femme(sophie).

parent(jacques, paul).
parent(marie, paul).
parent(paul, sophie).
parent(marc, sophie).

% Déclaration des règles
pere(X, Y) :- homme(X), parent(X, Y).
mere(X, Y) :- femme(X), parent(X, Y).
grand_parent(X, Y) :- parent(X, Z), parent(Z, Y).
frere_ou_soeur(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
oncle_ou_tante(X, Y) :- frere_ou_soeur(X, Z), parent(Z, Y).

