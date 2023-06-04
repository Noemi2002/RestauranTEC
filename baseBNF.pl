% Elementos l�xicos
:-consult('basese.pl').

% Saludos
saludar1(["Hola"|Rest], Rest).
saludar1(["hola"|Rest], Rest).
saludar1(["Hey"|Rest], Rest).
saludar1(["hey"|Rest], Rest).

saludar2(["Buenos"|Rest], Rest).
saludar2(["buenos"|Rest], Rest).
saludar3(["dias"|Rest], Rest).

saludar4(["Buenas"|Rest], Rest).
saludar4(["buenas"|Rest], Rest).
saludar5(["tardes"|Rest], Rest).
saludar5(["noches"|Rest], Rest).

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

% Preposiciones
preposicion(["En"|Rest], Rest).
preposicion(["en"|Rest], Rest).

% Verbos
verbo(["comer"|Rest], Rest).
verbo(["desayunar"|Rest], Rest).
verbo(["almorzar"|Rest], Rest).
verbo(["cenar"|Rest], Rest).
verbo(["tomar"|Rest], Rest).
verbo(["visitar"|Rest], Rest).
verbo(["querer"|Rest], Rest).
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

% Pronombres
pronombre(["Yo"|Rest], Rest).
pronombre(["yo"|Rest], Rest).
pronombre(["Ella"|Rest], Rest).
pronombre(["ella"|Rest], Rest).
pronombre(["�l"|Rest], Rest).
pronombre(["�l"|Rest], Rest).
pronombre(["Nosotros"|Rest], Rest).
pronombre(["nosotros"|Rest], Rest).
pronombre(["Ellos"|Rest], Rest).
pronombre(["ellos"|Rest], Rest).
pronombre(["Ellas"|Rest], Rest).
pronombre(["ellas"|Rest], Rest).

% Adverbios
adverbio(['hoy'|Rest], Rest).
adverbio(['ma�ana'|Rest], Rest).
adverbio(['cerca'|Rest], Rest).
adverbio(['lejos'|Rest], Rest).
adverbio(['pronto'|Rest], Rest).
adverbio(['tambi�n'|Rest], Rest).
adverbio(['bueno'|Rest], Rest).
adverbio(['malo'|Rest], Rest).
adverbio(['tarde'|Rest], Rest).
adverbio(['temprano'|Rest], Rest).
adverbio(['noche'|Rest], Rest).
adverbio(['no'|Rest], Rest).
adverbio(['No'|Rest], Rest).
adverbio(['si'|Rest], Rest).
adverbio(['Si'|Rest], Rest).

% Sustantivos
sustantivo(['mascotas'|Rest], Rest, f).
sustantivo(['opcion'|Rest], Rest, f).
sustantivo(['opciones'|Rest], Rest, f).
sustantivo(['comida'|Rest], Rest, f).
sustantivo(['comida r�pida'|Rest], Rest, f).
sustantivo(['mariscos'|Rest], Rest, m).
sustantivo([Rest|'italiana'], Rest, f).
sustantivo([Rest|'japonesa'], Rest, f).
sustantivo([Rest|'argentina'], Rest, f).
sustantivo([Rest|'alemana'], Rest, f).
sustantivo([Rest|'asiatica'], Rest, f).
sustantivo([Rest|'mexicana'], Rest, f).
sustantivo([Rest|'vegana'], Rest, f).
sustantivo([Rest|'Comida gourmet y opciones sin gluten'], Rest, f).

% Determinantes
determinante(["alguna"|Rest], Rest, f).
determinante(["alguno"|Rest], Rest, m).
determinante(["la"|Rest], Rest, f).
determinante(["las"|Rest], Rest, f).
determinante(["una"|Rest], Rest, f).
determinante(["unas"|Rest], Rest, f).
determinante(["tengo"|Rest], Rest, no).




















