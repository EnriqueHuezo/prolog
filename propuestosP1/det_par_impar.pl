% Calcular si un numero es par o impas

% Si el numero es cero, cuenta como par
det_par_impar(Numero) :- 
    Numero =:= 0,
    !,
    write('El numero 0 es par').

det_par_impar(Numero) :-
    Numero =:= 1,
    !,
    write('El numero 1 es impar').

det_par_impar(Numero) :-
    Respuesta is Numero mod 2,
    Respuesta =:= 0,
    !,
    write('El numero '),
    write(Numero),
    write(' es par').

det_par_impar(Numero) :-
    Respuesta is Numero mod 2,
    Respuesta =\= 0,
    !,
    write('El numero '),
    write(Numero),
    write(' es impar').