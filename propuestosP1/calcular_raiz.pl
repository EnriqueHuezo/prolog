% Calcular raiz

% Primero se debe de determinar si el numero es negativo para terminar o cortar el proceso
calcular_raiz(Numero, _) :-
    Numero < 0,
    !,
    write('El numero es negativo, no se puede calcular la raiz.').

calcular_raiz(Numero, Raiz) :-
    PotenciaFraccionaria is 1 / Raiz,  
    calcular_potencia(Numero, PotenciaFraccionaria, Resultado),
    write('El resultado es: '),
    write(Resultado).

% Para potencias, se sabe que si es 0, esta dara como resultado 1
calcular_potencia(_, 0, 1).
calcular_potencia(Numero, Exponente, Resultado) :-
    Resultado is Numero ** Exponente. 
