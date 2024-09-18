pelicula(el_padrino, drama).
pelicula(buenos_muchachos, drama).
pelicula(alien, terror).
pelicula(prometheus, terror).
pelicula(tarzan, animacion).
pelicula(enredados, animacion).

genero_favorito(enrique, drama).
genero_favorito(enrique, terror).
genero_favorito(alejandra, animacion).
genero_favorito(alejandra, drama).

ya_vio(enrique, el_padrino).
ya_vio(enrique, prometheus).
ya_vio(alejandra, enredados).
ya_vio(alejandra, tarzan).

recomendar_pelicula(Usuario, Recomendacion) :-
    genero_favorito(Usuario, GeneroFavorito),
    pelicula(Recomendacion, GeneroFavorito),
    not(ya_vio(Usuario, Recomendacion)).




