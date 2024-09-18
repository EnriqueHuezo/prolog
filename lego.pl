personaje(batman).
personaje(superman).
personaje(wonderwoman).
personaje(kingkong).
personaje(batgirl).
personaje(alfred).
personaje(jamesgordon).
personaje(robin).
personaje(bane).
personaje(catwoman).
personaje(harley).
personaje(mrfreeze).
personaje(poisonivy).
personaje(redhood).
personaje(sauron).
personaje(scarecrow).
personaje(joker).
personaje(twoface).
personaje(penguin).
personaje(riddler).

esbueno(batman).
esbueno(batgirl).
esbueno(alfred).
esbueno(jamesgordon).
esbueno(robin).
esbueno(superman).
esbueno(wonderwoman).
esbueno(kingkong).

esmalo(bane).
esmalo(catwoman).
esmalo(harley).
esmalo(mrfreeze).
esmalo(poisonivy).
esmalo(redhood).
esmalo(sauron).
esmalo(scarecrow).
esmalo(joker).
esmalo(twoface).
esmalo(penguin).
esmalo(riddler).

cameo(sauron).
cameo(kingkong).

padre(batman, robin).
padre(batman, redhood).
padre(jamesgordon, batgirl).
esadoptado(robin, batman).
esadoptado(redhood, batman).
mentor(alfred, batman).
batman(batman, robin).

aliado(batman, batgirl).
aliado(batman, robin).
aliado(batman, jamesgordon).
aliado(batman, alfred).
aliado(joker, sauron).
aliado(joker, bane).
aliado(joker, catwoman).
aliado(joker, harley).
aliado(joker, mrfreeze).
aliado(joker, poisonivy).
aliado(joker, redhood).
aliado(joker, scarecrow).
aliado(joker, twoface).
aliado(joker, penguin).
aliado(joker, riddler).

enemigo(batman, bane).
enemigo(batman, catwoman).
enemigo(batman, harley).
enemigo(batman, mrfreeze).
enemigo(batman, poisonivy).
enemigo(batman, redhood).
enemigo(batman, scarecrow).
enemigo(batman, joker).
enemigo(batman, twoface).
enemigo(batman, penguin).
enemigo(batman, riddler).
amigo(batman, batgirl).
amigo(batman, robin).
amigo(batman, alfred).

humano(batman).
humano(batgirl).
humano(alfred).
humano(jamesgordon).
humano(robin).
humano(bane).
humano(catwoman).
humano(harley).
humano(mrfreeze).
humano(poisonivy).
humano(redhood).
humano(scarecrow).
humano(joker).
humano(twoface).
humano(penguin).
humano(riddler).
nohumano(sauron).

lider(batman).
lider(joker).

liderheroe(batman).
lidervillano(joker).

poder(mrfreeze, hielo).
poder(poisonivy, controlplantas).
poder(sauron, controlmentes).
poder(scarecrow, miedo).

sinpoderes(batman).
sinpoderes(batgirl).
sinpoderes(alfred).
sinpoderes(jamesgordon).
sinpoderes(robin).
sinpoderes(bane).
sinpoderes(catwoman).
sinpoderes(harley).
sinpoderes(joker).
sinpoderes(twoface).
sinpoderes(penguin).

% 1. ¿Quienes son los heroes?
heroe(X) :- personaje(X), esbueno(X).

% 2. ¿Quienes son los villanos?
villano(X) :- personaje(X), esmalo(X).

% 3. ¿Quienes son los aliados de batman?
aliadosbatman(X) :- aliado(batman, X).

% 4. ¿Quienes son los aliados del joker?
aliadosjoker(X) :- aliado(joker, X).

% 5. ¿Quienes son los enemigos de batman?
enemigosbatman(X) :- enemigo(batman, X).

% 6. ¿Quienes son los amigos de batman?
amigosbatman(X) :- amigo(batman, X).

% 7. ¿Quienes son los humanos?
todosloshumanos(X) :- humano(X).

% 8. ¿Quienes son los no humanos?
todoslosnohumanos(X) :- nohumano(X).

% 9. ¿Quienes son los lideres?
todosloslideres(X) :- lider(X).

% 10. ¿Quienes son los lideres heroes?
lideresheroes(X) :- liderheroe(X).

% 11. ¿Quienes son los lideres villanos?
lideresvillanos(X) :- lidervillano(X).

% 12. ¿Quienes tienen poderes?
todosconpoderes(X) :- poder(X, _).

% 13. ¿Quienes no tienen poderes?
todosinconpoderes(X) :- sinpoderes(X).

% 14. ¿Quienes son los padres?
todoslospadres(X, Y) :- padre(X, Y).

% 15. ¿Quienes son los mentores?
todoslosmentores(X, Y) :- mentor(X, Y).

% 16. ¿Que villanos hacen cameos?
villanoscameos(X) :- villano(X), cameo(X).

% 17. ¿Quienes son los conocidos del joker?
conocidosjoker(X) :- aliado(joker, X), villano(X), enemigo(batman, X).

% 18. ¿Quienes son los hijos adoptados de batman?
hijosadoptadosbatman(X,Y) :- esadoptado(X, Y), padre(Y, X).

% 19. ¿Quienes son los aliados de batman que no son humanos?
aliadosbatmannohumanos(X) :- aliado(batman, X), nohumano(X).

% 20. ¿Quienes son los enemigos de batman que son humanos?
enemigosbatmanhumanos(X) :- enemigo(batman, X), humano(X).

% 21. ¿Que heroes hacen cameos?
heroescameos(X) :- heroe(X), cameo(X).

