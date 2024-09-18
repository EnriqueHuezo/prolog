tiene_pelo(koala).
tiene_pelo(mono).
tiene_pelo(gato).

da_leche(koala).
da_leche(mono).

puede_volar(paloma).
puede_volar(loro).
puede_volar(perico).

pone_huevos(paloma).
pone_huevos(loro).
pone_huevos(perico).

vive_en_agua(cocodrilo).
vive_en_agua(tiburon).
vive_en_agua(salmon).

tiene_escamas(cocodrilo).
tiene_escamas(salmon).

es_mamifero(Animal) :-
    tiene_pelo(Animal),
    da_leche(Animal).

es_ave(Animal) :-
    puede_volar(Animal),
    pone_huevos(Animal),


 