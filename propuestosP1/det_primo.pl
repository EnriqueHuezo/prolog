det_primo(Numero) :-
    Numero < 2,
    !,
    write('El numero no es primo').

det_primo(2) :-
    !,
    write('El numero es primo').

det_primo(Numero) :-
    verificar_divisores(Numero, 2).

verificar_divisores(Numero, Iteracion) :-
    Iteracion * Iteracion > Numero,
    !,
    write('El numero es primo').

verificar_divisores(Numero, Iteracion) :-
    Numero mod Iteracion =:= 0,
    !,
    write('El numero no es primo').

verificar_divisores(Numero, Iteracion) :-
    IteracionNuevo is Iteracion + 1,
    verificar_divisores(Numero, IteracionNuevo).