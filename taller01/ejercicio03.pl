% Enrique quiere vencer a Juan y es aliado de sonia
% Juan quiere vencer a Enrique y es aliado de vilma

enemigo(enrique, juan).
enemigo(juan, enrique).
enemigo(vilma, sonia).
enemigo(sonia, vilma).
enemigo(vilma, enrique).
enemigo(sonia, juan).

aliado(Atacante, Enemigo, Aliado) :-
    enemigo(Atacante, Enemigo),
    enemigo(Enemigo, Atacante),
    enemigo(Aliado, Enemigo),
    Atacante \== Aliado,
    Atacante \== Enemigo,
    Enemigo \== Aliado.

