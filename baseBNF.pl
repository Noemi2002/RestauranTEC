% Elementos léxicos
:-consult(basese).

%Saludos
saludar1(["Hola"|Rest], Rest).
saludar1(["hola"|Rest], Rest).
saludar1(["Hey"|Rest], Rest).
saludar1(["hey"|Rest], Rest).

saludar2(["Buenos"|Rest], Rest).
saludar2(["buenos"|Rest], Rest).
saludo4(["dias"|Rest], Rest).

saludar3(["Buenas"|Rest], Rest).
saludar3(["buenas"|Rest], Rest).
saludo5(["tardes"|Rest], Rest).
saludo5(["noches"|Rest], Rest).

%Despedidas
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

%Prerposiciones
preposicion(["En"|Rest], Rest).
preposicion(["en"|Rest], Rest).


%Verbos (arreglarlos)

%%Verbo
verbo(["comer"|Rest], Rest).
verbo(["desayunar"|Rest], Rest).
verbo(["almorzar"|Rest], Rest).
verbo(["cenar"|Rest], Rest).
verbo(["tomar"|Rest], Rest).


verbo(["visitar"|Rest], Rest).
verbo(["querer"|Rest], Rest).
%conjugado(querer, queremos, n). %n -> nosotros



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
verbo(["Estamos"|Rest], Rest).
verbo(["estamos"|Rest], Rest).

sinonimo(tomar, beber).




preposicion(["Me"|Rest], Rest).
preposicion(["me"|Rest], Rest).
preposicion(["Nos"|Rest], Rest).
preposicion(["nos"|Rest], Rest).
preposicion(["Les"|Rest], Rest).
preposicion(["les"|Rest], Rest).
preposicion(con).

%Pronombres
pronombre(["Yo"|Rest], Rest).
pronombre(["yo"|Rest], Rest).
pronombre(["Ella"|Rest], Rest).
pronombre(["ella"|Rest], Rest).
pronombre(["Él"|Rest], Rest).
pronombre(["él"|Rest], Rest).
pronombre(["Nosotros"|Rest], Rest).
pronombre(["nosotros"|Rest], Rest).
pronombre(["Ellos"|Rest], Rest).
pronombre(["ellos"|Rest], Rest).
pronombre(["Ellas"|Rest], Rest).
pronombre(["ellas"|Rest], Rest).





%Adverbios
aderbio(['hoy'|Rest], Rest).
adverbio(['mañana'|Rest], Rest).
adverbio(['cerca'|Rest], Rest).
adverbio(['lejos'|Rest], Rest).
adverbio(['pronto'|Rest], Rest).
adverbio(['también'|Rest], Rest).
adverbio(['bueno'|Rest], Rest).
adverbio(['malo'|Rest], Rest).
adverbio(['tarde'|Rest], Rest).
adverbio(['temprano'|Rest], Rest).
adverbio(['noche'|Rest], Rest).
adverbio(['no'|Rest], Rest).
adverbio(['No'|Rest], Rest).
adverbio(['si'|Rest], Rest).
adverbio(['Si'|Rest], Rest).




sustantivo(['mascotas'|Rest], Rest, f).
sustantivo(['opcion'|Rest], Rest, f).
sustantivo(['opciones'|Rest], Rest, f).

sustantivo(['comida'|Rest], Rest, f).
sustantivo(['comida rápida'|Rest], Rest, f).
sustantivo(['maricos'|Rest], Rest, m).
sustantivo([ Rest|'italiana'], Rest, f).
sustantivo([Rest|'japonesa'], Rest, f).
sustantivo([Rest|'argentina'], Rest, f).
sustantivo([Rest|'alemana'], Rest, f).
sustantivo([Rest|'asiatica'], Rest, f).
sustantivo([Rest|'mexicana'], Rest, f).
sustantivo([Rest|'vegana'], Rest, f).
sustantivo([Rest|'Comida gourmet y opciones sin gluten'], Rest, f).



sugerencias(podrías).

determinante(["alguna"|Rest], Rest, f).
determinante(["alguno"|Rest], Rest, m).
determinante(["la"|Rest], Rest, f).
determinante(["las"|Rest], Rest, f).
determinante(["una"|Rest], Rest, f).
determinante(["unas"|Rest], Rest, f).
determinante(["tengo"|Rest], Rest, no).







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
%interjecciones(si, no, oh, ay, uf, hola, adios).
% sustantivos(gato, perro, casa, mesa, silla, libro, auto, ciudad, pais,
% persona).
% adjetivos(grande, pequeño, hermoso, feo, feliz, triste, inteligente,
% tonto, divertido, aburrido).


