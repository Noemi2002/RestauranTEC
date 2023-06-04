:-consult(basebnf).
:-consult(basese).

% Reglas gramaticales
oracion(Oracion, Resultado):-saludo(Oracion, Resultado).
oracion(Oracion, Resultado):-saludo(Oracion, Res1), sintagma(Res1, Resultado).
oracion(Oracion, Resultado):-saludo(Oracion, Res1), sustantivo(Res1, Resultado, _).
oracion(Oracion, Resultado):-sintagma(Oracion, Resultado).
oracion(Oracion, Resultado):-adverbio(Oracion, Res1), sintagma_descriptivo(Res1, Resultado).
oracion(Oracion, Resultado):-adverbio(Oracion, Res1), sintagma_verbal(Res1, Resultado).
oracion(Oracion, Resultado):-adverbio(Oracion, Res1), sintagma_nominal(Res1, Resultado).
oracion(Oracion, Resultado):-adverbio(Oracion, Res1), sintagma_nominal(Res1, Resultado).
% oracion(Oracion, Resultado):-adverbio(Oracion, Res1),
% sintagma_verbal(Res1, Res2), adjetivo(Res2, Resultado).
oracion(Oracion, Resultado):-adverbio(Oracion, Resultado).
oracion(Oracion, Resultado):-sintagma_descriptivo(Oracion, Res1), sintagma_preposicional(Res1, Resultado).
oracion(Oracion, Resultado):-despedida(Oracion, Resultado).
oracion(Oracion, Resultado):-despedida(Oracion, Res1), sustantivo(Res1, Resultado, _).




saludo(Oracion, Resultado):- saludar1(Oracion, Resultado).
saludo(Oracion, Resultado):- saludar2(Oracion, Res1),  saludar4(Oracion, Resultado).
saludo(Oracion, Resultado):- saludar3(Oracion, Res1),  saludar5(Oracion, Resultado).

despedida(Oracion, Resultado):- despedir(Oracion, Resultado).

sintagma(Oracion, Resultado):- sintagma_nominal(Oracion, Res1), sintagma_verbal(Res1, Resultado).
sintagma(Oracion, Resultado):- sintagma_nominal(Oracion, Res1), sintagma_descriptivo(Res1, Resultado).

% sintagma_preposicional(Oracion, Resultado):- preposicion(Oracion,
% Res1), adjetivo(Res1, Res2), verbo(Res2, Resultado).
sintagma_preposicional(Oracion, Resultado):- preposicion(Oracion, Res1), sintagma_nominal(Res1, Resultado).


sintagma_descriptivo(Oracion, Resultado):- adverbio(Oracion, Res1), verbo(Res1, Resultado).
% sintagma_descriptivo(Oracion, Resultado):- verbo(Oracion, Res1),
% adjetivo(Res1, Resultado).
sintagma_descriptivo(Oracion, Resultado):- adverbio(Oracion, Res1), determinante(Res1, Resultado, _).

sintagma_nominal(Oracion, Resultado):-determinante(Oracion, Res1, Genero), sustantivo(Res1, Resultado, Genero).
sintagma_nominal(Oracion, Resultado):-determinante(Oracion, Res1, _), sustantivo(Res1, Resultado, _). %Sin tomar en cuenta el género
sintagma_nominal(Oracion, Resultado):-determinante(Oracion, Res1, Genero), verbo(Res1, Resultado).

sintagma_verbal(Oracion, Resultado):-verbo(Oracion, Resultado).
sintagma_verbal(Oracion, Resultado):-verbo(Oracion, Res1), sintagma_nominal(Res1, Resultado).
sintagma_verbal(Oracion, Resultado):-verbo(Oracion, Res1), sintagma_nominal(Res1, Resultado).
sintagma_verbal(Oracion, Resultado):-verbo(Oracion, Res1), sintagma_nominal(Res1, Resultado).
sintagma_verbal(Oracion, Resultado):-verbo(Oracion, Res1), sintagma_nominal(Res1, Resultado).















% Regla de prueba
test :- write('Ingrese una oración: '), read(X), oracion(X, []), write('La oración es válida.'), nl, test.












