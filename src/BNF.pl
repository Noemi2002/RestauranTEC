
% Elementos l�xicos
:-consult(basebnf).

% Reglas gramaticales
oracion --> saludo.
oracion --> despedida.
oracion --> saludo, pregunta.
oracion --> saludo_bot.
oracion --> pregunta.
oracion --> respuesta_si.
oracion --> respuesta_no.

saludo --> [Saludo], {saludar(Saludo)}.

despedida --> [Despedida], {despedir(Despedida)}.

saludo_bot --> saludo, [Bot], {sustantivo(Bot, _, _)}.

pregunta --> sintagma.

respuesta_si --> adverbio, sintagma_descriptivo.
respuesta_si --> adverbio, sintagma_verbal.
respuesta_si --> adverbio, sintagma_nominal.
respuesta_si --> adverbio, sintagma_nominal, adjetivo.

respuesta_no --> adverbio.

sintagma --> sintagma_descriptivo.
sintagma --> sintagma_preposicional.

sintagma_descriptivo --> adverbio, verbo.
sintagma_descriptivo --> verbo, adjetivo.
sintagma_descriptivo --> adverbio, determinante, adjetivo.

sintagma_preposicional --> preposicion, adjetivo, verbo.
sintagma_preposicional --> preposicion, sintagma_nominal.

sintagma_nominal --> determinante, sustantivo.
sintagma_nominal --> determinante, sustantivo, verbo.
sintagma_nominal --> determinante, verbo.

% Predicados para elementos l�xicos
saludar(Saludo) :- saludar(Saludo, _).

despedir(Despedida) :- despedir(Despedida, _).

preposicion([Preposicion|Rest], Rest) :- preposicion(Preposicion).

adverbio([Adverbio|Rest], Rest) :- adverbio(Adverbio).

verbo([Verbo|Rest], Rest) :- verbo(Verbo).

determinante([Determinante|Rest], Rest) :- articulo(Determinante).

sustantivo([Sustantivo|Rest], Rest) :- sustantivos(Sustantivo).

% Regla de prueba
test :- write('Ingrese una oraci�n: '), read(X), oracion(X, []), write('La oraci�n es v�lida.'), nl, test.












