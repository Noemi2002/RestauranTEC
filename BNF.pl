% Reglas gramaticales para el BNF
consulta --> verbo, sustantivo, preposicion, sustantivo.
consulta --> verbo, preposicion, sustantivo.
consulta --> verbo, sustantivo.
consulta --> verbo.

verbo --> [comer].
verbo --> [buscar].
verbo --> [encontrar].

sustantivo --> [hamburguesas].
sustantivo --> [pizza].
sustantivo --> [mariscos].
sustantivo --> [comida_rapida].
% Agrega m�s sustantivos seg�n los tipos de comida y otras caracter�sticas

preposicion --> [en].
preposicion --> [cerca_de].
preposicion --> [en_la_zona_de].
% Agrega m�s preposiciones seg�n tus necesidades

% Predicado principal para la interpretaci�n de la consulta
interpretar(Consulta) :-
    phrase(consulta, Consulta).

