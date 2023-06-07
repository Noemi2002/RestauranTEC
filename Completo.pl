%Definici�n de los restaurantes con todas sus caracter�sticas

restaurante('Mcdonalds', [menu, 'comida rapida', ['hamburguesa', 'pollo frito', 'nuggets', 'wraps', 'ensalada', 'papas', 'refresco', 'milkshake', 'cafe']], [direccion, 'costado sur de plaza mayor, avenida 2'], [lugar, 'Cartago'], [disposiciones, ['No se aceptan mascotas', 'Hay autoservicio']]).

restaurante('La princesa marina', [menu, 'mariscos', ['pescado', 'camarones', 'langosta', 'calamares', 'pulpo', 'mejillones', 'ostras']], [direccion, 'calle principal, puerto viejo'], [lugar, 'Limon'], [disposiciones, ['Terraza con vista al mar', 'Aceptan reservaciones']]).

restaurante('Papajohns', [menu, 'comida italiana', ['pizza', 'pasta', 'ensalada', 'lasagna', 'calzone', 'tiramisu', 'gelato']], [direccion, 'avenida central, san jose'], [lugar, 'San Jose'], [disposiciones, ['Menu para ni�os', 'Entrega a domicilio']]).

restaurante('Sushi Ko', [menu, 'comida japonesa', ['sopa', 'gyozas', 'ostras', 'Spicy Edamame', 'Edamame Binchotan' ]], [direccion, 'METRO CENTRO, San Jos�'], [lugar, 'San Jose'], [disposiciones, ['Comida artesanal', 'Comida para llevar']]).

restaurante('La Esquina de Buenos Aires', [menu, 'comida argentina', ['morcilla', 'chorizo', 'chinchulin', 'provoleta', 'lomito', 'entra�a', 'ensalada', 'vino']], [direccion, 'Iglesia Nuestra Se�ora de la Soledad, Calle 11 esquina Av. 4 Detr�s de la, San Jos�'], [lugar, 'Heredia'], [disposiciones, ['Pedidos por whatsapp']]).

restaurante('Stiefel Pub', [menu, 'comida alemana',['cervezas artesanales','pizza', 'alistas', 'papas']], [direccion, 'Av. 26, San Jose, Escaz�'], [lugar, 'San Jose'], [disposiciones, ['comida de bar', 'Entrega a domicilio', 'Se permiten mascotas']]).

restaurante('Tin Jo', [menu, 'comida asi�tica', ['camarones', 'ramen', 'wantan', 'sushi', 'samosas']], [direccion, 'Calle 11, entre Avs. 6 y 8, C. 11, Provincia de San Jose'], [lugar, 'San Jose'], [disposiciones, ['Se puede pedir desde el auto', 'Se tiene que hacer reservaci�n']]).

restaurante('Veggie Delights', [menu, 'comida vegana', ['hamburguesa', 'ensalada', 'Wraps de verduras', 'batidos']], [direccion, 'WWHH+PPR, Gonz�lez Lahmann, San Jose'], [lugar, 'San Jose'],[disposiciones, ['Comida para llevar o en el lugar ']]).

restaurante('La Casona Mexicana', [menu, 'comida mexicana', ['tacos', 'alambres', 'burritos', 'sopas', 'postres', 'parrilla', 'cocteles', 'tequila', 'mezcal']], [direccion, '300m Este del Puente Bailey, carretera al Volc�n Iraz�, V�a 219, Provincia de Cartago, Cartago'], [lugar, 'Cartago'], [disposiciones, ['Se requiere reservaci�n']]).

restaurante('PetFriendly Bistro', [menu, 'Comida gourmet y opciones sin gluten', ['salmon', 'Ensalada de quinoa', 'Postre sin az�car']], [direccion, 'Santa Ana'], [lugar, 'San Jose'], [disposiciones, ['Pet-friendly', '�rea espec�fica para mascotas']]).

%--------------------


alimento(S0,S,Claves):-
    pronombre(S0,S1),
    sintagma_verbal(S1,S2),
    sintagma_nominal(S2,S, Claves, _Gen), !.

alimento(S0,S, Claves):-
    sintagma_verbal(S0,S1),
    sintagma_nominal(S1,S, Claves, _Gen), !.

alimento(S0,S, Claves):-
    sintagma_nominal(S0,S, Claves, _Gen), !.

alimento(_S0,_S,_Claves):-
    write("Lo sentimos, no se conoce alg�n restaurante con ese tipo de comida"),
    nl, nl,
    restaurantec.



%--------}

ubicacion(S0, S, S1) :-
    preposicion(S0, S1),
    obtenerLugar(_, S).

ubicacion(S0, S, S0) :-
    obtenerLugar(_, S).


%----------------------
%---Sintagma nominal---

%sintagma_nominal(Oraci�n preliminar, Oraci�n, Pista, G�nero).
sintagma_nominal(S0,S, S1, G):-
    nombre(S1,S),
    determinante(S0,S1,G ).

sintagma_nominal(S0,S, S1, G):-
    nombre(S0,S).

%---Sintagma verbal---
% sintagma_verbal(Oraci�n preliminar, Oraci�n).
sintagma_verbal(Verbo,Persona):-verbo(Verbo,S),member(Persona,S).

sintagma_verbal(Verbo, Persona) :-
    verbo(Verbo, S1),
    member(Persona, S1),
    verbo(Verbo, S2),
    member(Persona, S2).




%------------Base de datos del BNF--------------
%determinante(Determinante, Oraci�n, G�nero)
determinante([alguna|Rest], Rest, f).
determinante([algun|Rest], Rest, m).
determinante([alguno|Rest], Rest, m).
determinante([la|Rest], Rest, f).
determinante([las|Rest], Rest, f).
determinante([una|Rest], Rest, f).
determinante([unas|Rest], Rest, f).
determinante([el|Rest], Rest, f).
determinante([los|Rest], Rest, f).

%Pronombre
%pronombre(Pronombre, Oraci�n)
pronombre([yo|Rest],Rest).
pronombre([el|Rest],Rest).
pronombre([ella|Rest],Rest).
pronombre([ellos|Rest],Rest).

%nombres de las comidas
%nombre(Nombre, Oraci�n)
nombre([hamburguesa| Rest], Rest).
nombre([pollo| Rest], Rest).
nombre([nuggets| Rest], Rest).
nombre([wraps| Rest], Rest).
nombre([ensalada| Rest], Rest).
nombre([papas| Rest], Rest).
nombre([refresco| Rest], Rest).
nombre([milkshake| Rest], Rest).
nombre([cafe| Rest], Rest).
nombre([pescado| Rest], Rest).
nombre([camarones| Rest], Rest).
nombre([langosta| Rest], Rest).
nombre([calamares| Rest], Rest).
nombre([pulpo| Rest], Rest).
nombre([mejillones| Rest], Rest).
nombre([ostras| Rest], Rest).
nombre([pizza| Rest], Rest).
nombre([pasta| Rest], Rest).
nombre([lasagna| Rest], Rest).
nombre([tiramusu| Rest], Rest).
nombre([gelato| Rest], Rest).
nombre([sopa| Rest], Rest).
nombre([gyozas| Rest], Rest).
nombre([spicy| Rest], Rest).
nombre([edamame| Rest], Rest).
nombre([morcilla| Rest], Rest).
nombre([chichulin| Rest], Rest).
nombre([provoleta| Rest], Rest).
nombre([lomito| Rest], Rest).
nombre([entra�a| Rest], Rest).
nombre([vino| Rest], Rest).
nombre([cerveza| Rest], Rest).
nombre([alitas| Rest], Rest).
nombre([ramen| Rest], Rest).
nombre([wantan| Rest], Rest).
nombre([suchi| Rest], Rest).
nombre([samosas| Rest], Rest).
nombre([batidos| Rest], Rest).
nombre([tacos| Rest], Rest).
nombre([alambres| Rest], Rest).
nombre([burritos| Rest], Rest).
nombre([postre| Rest], Rest).
nombre([parrilla| Rest], Rest).
nombre([cocteles| Rest], Rest).
nombre([tequila| Rest], Rest).
nombre([mezcal| Rest], Rest).
nombre([salmon| Rest], Rest).
nombre(['Wraps de verduras'| Rest], Rest).
nombre(['Ensalada de quinoa'| Rest], Rest).
nombre(['Postre sin az�car'| Rest], Rest).


%Verbos y sus conjugados
verbo(Verbo, Conjugaciones) :-
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
    ]).

%Preposiciones
%preposicion(Preposicion, Oracion)
preposicion(["En"|Rest], Rest).
preposicion(["en"|Rest], Rest).
preposicion(["de"|Rest], Rest).
preposicion(["para"|Rest], Rest).
preposicion(["con"|Rest], Rest).
preposicion(["por"|Rest], Rest).


%---- Parser ----


%El caso base (nada)
parseInput([],[]).

%Se hace una lista de las palabras ingresadas por el usuario como �tomos
parseInput([C|InputList], [A|Result]):-
    atom_string(A,C),
    parseInput(InputList,Result).


%Entradas: Input es la entrada de texto del usuario
%Salidas: R ser� la entrada en formato analizable
getInput(Input,R):-
    split_string(Input," ",".",R1),
    parseInput(R1,R).



%Para el Men�
obtenerMenu(Restaurante, Menu):- restaurante(Restaurante, [menu, _, Menu|_], _, _, _).

%Para la direcci�n del restaurante
obtenerDireccion(Restaurante, Direccion) :-restaurante(Restaurante, _, [direccion, Direccion|_], _, _).

%Para obtener la provinvia donde est� el restaurante
obtenerLugar(Restaurante, Lugar) :-restaurante(Restaurante, _, _, [lugar, Lugar], _).

obtenerLugar(Restaurante, Lugar) :-  write("Lo sentimos, no se conoce alg�n restaurante con ese tipo espec�fico de comida en ese lugar"), nl, nl,
    restaurantec.

%Para obtener ciertas disposiciones de los restaurantes
obtener_disposiciones(Restaurante, Disposiciones) :-restaurante(Restaurante, _, _, _, [disposiciones, Disposiciones]).

%Buscar una comida espec�fica
comidaEspecifica(Restaurante, TipoComida) :-restaurante(Restaurante, [_, _, Menu|_], _, _, _),  member(TipoComida, Menu).

comidaEspecifica(_K,_Y):-
    write("Lo sentimos, no se conoce alg�n restaurante con ese tipo espec�fico de comida"), nl, nl,
    restaurantec.

validarlugar(K, Y) :-
    ubicacion(_, Y, _),
    obtenerLugar(K, Y).


validarlugar(_K,_Y):-
    write("Lo sentimos, no se conoce alg�n restaurante con sus preferencias en ese lugar"), nl, nl,
    restaurantec.


%======================  PRINCIPAL  ========================%
% Funci�n principal que hace las preguntas al usuario adem�s de ser
% utilizada como interfaz.
% Entradas: Ninguna.
% Salidas: Ninguna.
% Restricciones: Contempladas en las validaciones

restaurantec:-
    write("�Bienvenido! �Que te se antoja comer hoy? Escriba su preferencia entre comillas, todo en min�scula, y con punto final por favor."), nl,

    read(InputAlimento),
    % InputAlimento es el input de usuario de preferencia de alimento
    % InputAlimentoParseado es el input para poder analizarse
    getInput(InputAlimento,InputAlimentoParseado),

    % AlimentoClave es la palabra clave de la frase del alimento
    alimento(InputAlimentoParseado,[],AlimentoClave),

    %K ser� el restaurante candidato
    comidaEspecifica(AlimentoClave, K),

    %
    write("�D�nde se te antoja comer?"), nl,

    read(InputLugar),

    % InputLugar es el input de usuario de preferencia de lugar
    % InputLugarParseado es el input para poder analizarse
    getInput(InputLugar,InputLugarParseado),

    % LugarClave es la palabra clave de la frase del lugar
    ubicacion(InputLugarParseado,[],[LugarClave|_]),

    %P ser� el lugar clave como string
    atom_string(LugarClave, P),

    obtenerLugar(K, P),




    %nombre del restaurante y direcci�n
    obtenerDireccion(N,D),

    atom_concat("Nuestra sugerencia es: Restaurante ", N, O1),
    atom_concat(O1, " que se ubica ", O2),
    atom_concat(O2, D, O3),

    %O3 es la frase completa de la recomendaci�n
    write(O3), nl,
    write("Su reservaci�n ha sido tramitada."), nl,
    %D son las disposiciones de los restaurantes
    obtener_disposiciones(K, D),
    write(D),nl, nl,

    %Se llama recursivamente por si el usuario quiere volver a consultar
    restaurantec.




















