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
despedir1(["Adios"|Rest], Rest).
despedir1(["adios"|Rest], Rest).
despedir1(["Chao"|Rest], Rest).
despedir1(["chao"|Rest], Rest).

despedir2(["Hasta"|Rest], Rest).
despedir2(["hasta"|Rest], Rest).
despedir3(["luego"|Rest], Rest).

despedir4(["Muchas"|Rest], Rest).
despedir4(["muchas"|Rest], Rest).
despedir5(["Gracias"|Rest], Rest).


% Preposiciones
preposicion(["En"|Rest], Rest).
preposicion(["en"|Rest], Rest).
preposicion(["de"|Rest], Rest).
preposicion(["para"|Rest], Rest).
preposicion(["con"|Rest], Rest).
preposicion(["por"|Rest], Rest).

% Verbos
verbo(["Hay"|Rest], Rest).
verbo(["hay"|Rest], Rest).

verbo(Verbo, Conjugaciones, Rest) :-
    member(Verbo, ["comer", "desayunar", "almorzar", "cenar", "tomar", "beber", "visitar", "querer", "estar", "ir", "ingerir", "consumir", "degustar", "buscar", "recomendar", "haber"]),
    member(Conjugaciones, [
        ['como', 'comes', 'come', 'comemos', 'comen', 'comer�a', 'comer�an'],
        ['desayuno', 'desayunas', 'desayuna', 'desayunamos', 'desayunan', 'desayunar�a', 'desayunar�an'],
        ['almuerzo', 'almuerzas', 'almuerza', 'almorzamos', 'almuerzan', 'almorzar�a', 'almorzar�an'],
        ['ceno', 'cenas', 'cena', 'cenamos', 'cenan', 'cenar�a', 'cenar�an'],
        ['tomo', 'tomas', 'toma', 'tomamos', 'toman', 'tomar�a', 'tomar�an'],
        ['bebo', 'bebes', 'bebe', 'bebemos', 'beben', 'beber�a', 'beber�an'],
        ['visito', 'visitas', 'visita', 'visitamos', 'visitan', 'visitar�a', 'visitar�an'],
        ['quiero', 'quieres', 'quiere', 'queremos', 'quieren', 'querr�a', 'querr�an', 'quisiera', 'quisieran'],
        ['estoy', 'est�s', 'est�', 'estamos', 'est�n', 'estar�a', 'estar�an'],
        ['voy', 'vas', 'va', 'vamos', 'van', 'ir�a', 'ir�an'],
        ['ingiero', 'ingieres', 'ingiere', 'ingerimos', 'ingieren', 'ingerir�a', 'ingerir�an'],
        ['consumo', 'consumes', 'consume', 'consumimos', 'consumen', 'consumir�a', 'consumir�an'],
        ['degusto', 'degustas', 'degusta', 'degustamos', 'degustan', 'degustar�a', 'degustar�an'],
        ['busco', 'buscas', 'busca', 'buscamos', 'buscan', 'buscar�a', 'buscar�an'],
        ['recomiendo', 'recomiendas', 'recomienda', 'recomendamos', 'recomiendan', 'recomendar�a', 'recomendar�an'],
        ['hay']
    ]),
    Rest = [].

% Pronombres
pronombre(Pronombre, Rest) :- member(Pronombre, ["Yo", "yo", "�l", "�l", "Ella", "ella", "Nosotros", "nosotros", "Vosotros", "vosotros", "Ellos", "ellos", "Ellas", "ellas"]), Rest = [].


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
adverbio(['muy'|Rest], Rest).
adverbio(['bastante'|Rest], Rest).

% Sustantivos
sustantivo(['restaurante'|Rest], Rest, f).
sustantivo(['comida'|Rest], Rest, f).
sustantivo(['bebida'|Rest], Rest, f).
sustantivo(['lugar'|Rest], Rest, f).
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
sustantivo(['Comida gourmet y opciones sin gluten'|Rest], Rest, f).

% Determinantes
determinante([alguna|Rest], Rest, f).
determinan([algun|Rest], Rest, m).
determinante([alguno|Rest], Rest, m).
determinante([la|Rest], Rest, f).
determinante([las|Rest], Rest, f).
determinante([una|Rest], Rest, f).
determinante([unas|Rest], Rest, f).
determinante([el|Rest], Rest, f).
determinante([los|Rest], Rest, f).

%Adejativos
adjetivo(delicioso).
adjetivo(exquisito).
adjetivo(saludable).
adjetivo(fresco).
adjetivo(acogedor).
adjetivo(tradicional).




















