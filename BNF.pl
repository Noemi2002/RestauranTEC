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
% Agrega más sustantivos según los tipos de comida y otras características

preposicion --> [en].
preposicion --> [cerca_de].
preposicion --> [en_la_zona_de].
% Agrega más preposiciones según tus necesidades

% Predicado principal para la interpretación de la consulta
interpretar(Consulta) :-
    phrase(consulta, Consulta).

