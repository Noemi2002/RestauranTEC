% Elementos léxicos
:-consult(basese).

% Saludos
saludar(["Hola"|Rest], Rest).
saludar(["hola"|Rest], Rest).
saludar(["Hey"|Rest], Rest).
saludar(["hey"|Rest], Rest).
saludar(["Buenos"|Rest], Rest).
saludar(["Buenas"|Rest], Rest).
saludar(["buenos"|Rest], Rest).
saludar(["buenas"|Rest], Rest).

% Despedidas
despedir(["Adios"|Rest], Rest).
despedir(["adios"|Rest], Rest).
despedir(["Chao"|Rest], Rest).
despedir(["chao"|Rest], Rest).
despedir(["Hasta"|Rest], Rest).
despedir(["hasta"|Rest], Rest).
despedir(["luego"|Rest], Rest).
despedir(["Muchas"|Rest], Rest).
despedir(["muchas"|Rest], Rest).
despedir(["Gracias"|Rest], Rest).
despedir(["Hasta"|Rest], Rest).
despedir(["hasta"|Rest], Rest).

% Prerposiciones
preposicion(["En"|Rest], Rest).
preposicion(["en"|Rest], Rest).


% Verbos
verbo(["Quiero"|Rest], Rest).
verbo(["quiero"|Rest], Rest).
verbo(["Quisiera"|Rest], Rest).
verbo(["quisiera"|Rest], Rest).
verbo(["Queremos"|Rest], Rest).
verbo(["queremos"|Rest], Rest).
verbo(["Quisieran"|Rest], Rest).
verbo(["quisieran"|Rest], Rest).
verbo(["Hay"|Rest], Rest).
verbo(["hay"|Rest], Rest).


preposicion(["Me"|Rest], Rest).
preposicion(["me"|Rest], Rest).
preposicion(["Nos"|Rest], Rest).
preposicion(["nos"|Rest], Rest).
preposicion(["Les"|Rest], Rest).
preposicion(["les"|Rest], Rest).
preposicion(con).

% Pronombres
pronombre(["Yo"|Rest], Rest).
pronombre(["yo"|Rest], Rest).
pronombre(["Ella"|Rest], Rest).
pronombre(["ella"|Rest], Rest).
pronombre(["el"|Rest], Rest).
pronombre(["el"|Rest], Rest).
pronombre(["Nosotros"|Rest], Rest).
pronombre(["nosotros"|Rest], Rest).
pronombre(["Ellos"|Rest], Rest).
pronombre(["ellos"|Rest], Rest).
pronombre(["Ellas"|Rest], Rest).
pronombre(["ellas"|Rest], Rest).

% Artículos
articulo(el).
articulo(los).
articulo(la).
articulo(las).
articulo(un).
articulo(uno).
articulo(unos).
articulo(unas).
articulo(una).

%Verbo
verbo(comer).
verbo(tomar).
verbo(visitar).

%Adverbios
aderbio(hoy).
adverbio(mañana).
adverbio(cerca).
adverbio(lejos).
adverbio(pronto).
adverbio(tambi�n).
adverbio(bueno).
adverbio(malo).
adverbio(tarde).
adverbio(temprano).
adverbio(noche).
adverbio(no).
adverbio(si).



sustantivos(mascotas).


sugerencias(podrías).


% adverbios(acaso, quiza, probablemente, posiblemente, tampoco, nunca,
% no, jamas, cerca, aqui, lejos, ahi, entre, bastante, mucho, demasiado,
% mas, menos, poco, nada, muy, apenas, luego, hoy, ayer, tarde, temprano,
% antier, pronto, antes, si, cierto, tambien, claro, regular, bien, mal,
% mejor, peor, asi, siempre).
% conjunciones(y, e, ni, pero, aunque, sino, o, u, si, como, que,
% mientras, luego, pues, porque).
% preposiciones(a, ante, bajo, con, contra, de, desde, durante, en,
% entre, hacia, hasta, para, por, segun, durante, mediante, sobre, sin,
% tras, pro, con, tras).
% interjecciones(si, no, oh, ay, uf, hola, adios).
% sustantivos(gato, perro, casa, mesa, silla, libro, auto, ciudad, pais,
% persona).
% adjetivos(grande, pequeño, hermoso, feo, feliz, triste, inteligente,
% tonto, divertido, aburrido).


