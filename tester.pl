:-consult('bnf.pl').
:-consult('basebnf.pl').
:-consult('basese.pl').


% Inicia una consulta
start :- write("Hola, Binevenido a RestauranTec. Que desea comer hoy?"), nl, read(Oracion), oracion(Oracion, Resultado), split(Oracion), nl, where.

% Pregunta un lugar de preferencia
where :- write("En que lugar desea comer hoy?"), read(Oracion), oracion(Oracion, Resultado), split(Oracion), nl.

% Lee un input
input :- read(X),split(X).

% Divide una oracion en palabras
split(X) :- split_string(X,' ',',',Y),verify(Y),oracion(Y,[]),input.

% Verifica si la palabra esta en los conjuntos
verify(Y):- incomida(Y).
verify(Y):- inlugar(Y).

% Comprueba si la palabra es parte y si lo es da una sugerencia
incomida(Y) :- comidaEspecifica(Restaurante,Y),write('Ese menu esta en el restaurante ',Restaurante).
incomida([_|Resto]) :- incomida(Resto).

% Comprueba si la palabra es parte y si lo es da una sugerencia
inlugar(Y) :- lugarEspecifico(Restaurante,Y),write(Restaurante,' se encuentra cerca de usted').
inlugar([_|Resto]) :- inlugar(Resto).
