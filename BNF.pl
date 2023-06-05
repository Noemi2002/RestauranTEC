:-consult('basebnf.pl').
:-consult('basese.pl').

% Reglas gramaticales

oracion(Oracion, Resultado) :- saludo(Oracion, Resultado).
oracion(Oracion, Resultado) :- saludo(Oracion, Res1), sintagma(Res1, Resultado).
oracion(Oracion, Resultado) :- saludo(Oracion, Res1), sustantivo(Res1, Resultado, _).
oracion(Oracion, Resultado) :- sintagma(Oracion, Resultado).
oracion(Oracion, Resultado) :- adverbio(Oracion, Res1), sintagma_descriptivo(Res1, Resultado).
oracion(Oracion, Resultado) :- adverbio(Oracion, Res1), sintagma_verbal(Res1, Resultado).
oracion(Oracion, Resultado) :- adverbio(Oracion, Res1), sintagma_nominal(Res1, Resultado).
oracion(Oracion, Resultado) :- adverbio(Oracion, Res1), sintagma_nominal(Res1, Resultado).
oracion(Oracion, Resultado) :- adverbio(Oracion, Resultado).
oracion(Oracion, Resultado) :- sintagma_descriptivo(Oracion, Res1), sintagma_preposicional(Res1, Resultado).
oracion(Oracion, Resultado) :- despedida(Oracion, Resultado).
oracion(Oracion, Resultado) :- despedida(Oracion, Res1), sustantivo(Res1, Resultado, _).

saludo(Oracion, Resultado) :- saludar1(Oracion, Resultado).
saludo(Oracion, Resultado) :- saludar2(Oracion, Res1), saludar3(Res1, Resultado).
saludo(Oracion, Resultado) :- saludar4(Oracion, Res1), saludar5(Res1, Resultado).

despedida(Oracion, Resultado) :- despedir1(Oracion, Resultado).
despedida(Oracion, Resultado) :- despedir5(Oracion, Resultado).
despedida(Oracion, Resultado) :- despedir2(Oracion, Res1), despedir3(Res1, Resultado).
despedida(Oracion, Resultado) :- despedir4(Oracion, Res1), despedir5(Res1, Resultado).

sintagma(Oracion, Resultado) :- sintagma_nominal(Oracion, Res1), sintagma_verbal(Res1, Resultado).
sintagma(Oracion, Resultado) :- sintagma_nominal(Oracion, Res1), sintagma_descriptivo(Res1, Resultado).

sintagma_preposicional(Oracion, Resultado) :- preposicion(Oracion, Res1), sintagma_nominal(Res1, Resultado).
sintagma_preposicional(Oracion, Resultado) :- preposicion(Oracion, Res1), adjetivo(Res1, Res2), verbo(Res2, Resultado).

sintagma_descriptivo(Oracion, Resultado) :- adverbio(Oracion, Res1), verbo(Res1, Resultado).
sintagma_descriptivo(Oracion, Resultado):- verbo(Oracion, Rest1), adjetivo(Rest1, Resultado).
sintagma_descriptivo(Oracion, Resultado) :- adverbio(Oracion, Res1), determinante(Res1, Resultado, _).

sintagma_nominal(Oracion, Resultado):- determinante(Oracion, Rest1, Genero), sustantivo(Rest1, Resultado, Genero).
sintagma_nominal(Oracion, Resultado):- determinante(Oracion, Rest1, _), sustantivo(Rest1, Resultado, _). %no importa el genero
sintagma_nominal(Oracion, Resultado):- determinante(Oracion, Rest1, _), verbo(Rest1, Resultado).


% sintagma_nominal(Oracion, Resultado) :- sustantivo(Oracion, Resultado,
% _).
% sintagma_nominal(Oracion, Resultado) :- sustantivo(Oracion, Res1, _),
% (Res1, Resultado,_).
% sintagma_nominal(Oracion, Resultado) :- sustantivo(Oracion, Res1, _),
% adjetivo(Res1, Resultado).
% sintagma_nominal(Oracion, Resultado) :- sustantivo(Oracion, Res1, _),
% adjetivo(Res1, Res2), sintagma_nominal(Res2, Resultado).
% sintagma_nominal(Oracion, Resultado) :- sustantivo(Oracion, Res1, _),
% adjetivo(Res1, Res2), sintagma_verbal(Res2, Resultado).
% sintagma_nominal(Oracion, Resultado) :- sustantivo(Oracion, Res1, _),
% adjetivo(Res1, Res2), sintagma_descriptivo(Res2, Resultado).
% sintagma_nominal(Oracion, Resultado) :- sustantivo(Oracion, Res1, _),
% adjetivo(Res1, Res2), sintagma_preposicional(Res2, Resultado).
% sintagma_nominal(Oracion, Resultado) :- sustantivo(Oracion, Res1, _),
% adjetivo(Res1, Res2), sintagma_nominal(Res2, Res3),
% sintagma_preposicional(Res3, Resultado).

sintagma_verbal(Oracion, Resultado):- verbo(Oracion, Resultado).
sintagma_verbal(Oracion, Resultado):- verbo(Oracion, Rest1), sintagma_nominal(Rest1, Resultado).
sintagma_verbal(Oracion, Resultado):- verbo(Oracion, Rest1), sintagma_descriptivo(Rest1, Resultado).
sintagma_verbal(Oracion, Resultado):- verbo(Oracion, Rest1), sustantivo(Rest1, Resultado, _).
sintagma_verbal(Oracion, Resultado):- verbo(Oracion, Rest1), adjetivo(Rest1, Resultado).

% Añade aquí otras reglas que definas para sintagma_nominal

% Ejemplos de reglas adicionales:
% sintagma_nominal(Oracion, Resultado) :- sustantivo(Oracion, Resultado, _), ...
% sintagma_nominal(Oracion, Resultado) :- sustantivo(Oracion, Res1, _), adjetivo(Res1, Resultado), ...

% Definición de palabras

% Aquí puedes definir las reglas para los diferentes términos del lenguaje.

% Ejemplo:
% sustantivo(Oracion, Resultado, Genero) :- member(Oracion, ["hamburguesa"]), Resultado = "hamburguesa", Genero = "femenino".




% Predicado para probar oraciones
test :- write("Ingrese una oración: "), read(Oracion), oracion(Oracion, Resultado), write("La oración es válida."), nl, nl, test.


%test :-
   % write('Ingrese una oración: '),
    %read(X),
    %oracion(X, []),
    %write('La oración es válida.'),
    %nl,
    %test.

















