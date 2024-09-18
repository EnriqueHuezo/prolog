juego_disponible(bioshock).
juego_disponible(resident).
juego_disponible(borderlands).
juego_disponible(minecraft).
juego_disponible(lol).
juego_disponible(overwatch).

ya_jugo(javito, bioshock).
ya_jugo(pepito, resident).
ya_jugo(rodri, borderlands).

comprar_juego(Juego) :-
    juego_disponible(Juego),
    not(ya_jugo(_, Juego)).
