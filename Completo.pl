%Definición de los restaurantes con todas sus características

restaurante('Mcdonalds', [menu, 'comida rapida', ['hamburguesa', 'pollo frito', 'nuggets', 'wraps', 'ensalada', 'papas', 'refresco', 'milkshake', 'cafe']], [direccion, 'costado sur de plaza mayor, avenida 2'], [lugar, 'Cartago'], [disposiciones, ['No se aceptan mascotas', 'Hay autoservicio']]).

restaurante('La princesa marina', [menu, 'mariscos', ['pescado', 'camarones', 'langosta', 'calamares', 'pulpo', 'mejillones', 'ostras']], [direccion, 'calle principal, puerto viejo'], [lugar, 'Limon'], [disposiciones, ['Terraza con vista al mar', 'Aceptan reservaciones']]).

restaurante('Papajohns', [menu, 'comida italiana', ['pizza', 'pasta', 'ensalada', 'lasagna', 'calzone', 'tiramisu', 'gelato']], [direccion, 'avenida central, san jose'], [lugar, 'San Jose'], [disposiciones, ['Menu para niños', 'Entrega a domicilio']]).

restaurante('Sushi Ko', [menu, 'comida japonesa', ['sopa', 'gyozas', 'ostras', 'Spicy Edamame', 'Edamame Binchotan' ]], [direccion, 'METRO CENTRO, San José'], [lugar, 'San Jose'], [disposiciones, ['Comida artesanal', 'Comida para llevar']]).

restaurante('La Esquina de Buenos Aires', [menu, 'comida argentina', ['morcilla', 'chorizo', 'chinchulin', 'provoleta', 'lomito', 'entraña', 'ensalada', 'vino']], [direccion, 'Iglesia Nuestra Señora de la Soledad, Calle 11 esquina Av. 4 Detrás de la, San José'], [lugar, 'Heredia'], [disposiciones, ['Pedidos por whatsapp']]).

restaurante('Stiefel Pub', [menu, 'comida alemana',['cervezas artesanales','pizza', 'alistas', 'papas']], [direccion, 'Av. 26, San Jose, Escazú'], [lugar, 'San Jose'], [disposiciones, ['comida de bar', 'Entrega a domicilio', 'Se permiten mascotas']]).

restaurante('Tin Jo', [menu, 'comida asiática', ['camarones', 'ramen', 'wantan', 'sushi', 'samosas']], [direccion, 'Calle 11, entre Avs. 6 y 8, C. 11, Provincia de San Jose'], [lugar, 'San Jose'], [disposiciones, ['Se puede pedir desde el auto', 'Se tiene que hacer reservación']]).

restaurante('Veggie Delights', [menu, 'comida vegana', ['hamburguesa', 'ensalada', 'Wraps de verduras', 'batidos']], [direccion, 'WWHH+PPR, González Lahmann, San Jose'], [lugar, 'San Jose'],[disposiciones, ['Comida para llevar o en el lugar ']]).

restaurante('La Casona Mexicana', [menu, 'comida mexicana', ['tacos', 'alambres', 'burritos', 'sopas', 'postres', 'parrilla', 'cocteles', 'tequila', 'mezcal']], [direccion, '300m Este del Puente Bailey, carretera al Volcán Irazú, Vía 219, Provincia de Cartago, Cartago'], [lugar, 'Cartago'], [disposiciones, ['Se requiere reservación']]).

restaurante('PetFriendly Bistro', [menu, 'Comida gourmet y opciones sin gluten', ['salmon', 'Ensalada de quinoa', 'Postre sin azúcar']], [direccion, 'Santa Ana'], [lugar, 'San Jose'], [disposiciones, ['Pet-friendly', 'Área específica para mascotas']]).

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
    write("Lo sentimos, no se conoce algún restaurante con ese tipo de comida"),
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

%sintagma_nominal(Oración preliminar, Oración, Pista, Género).
sintagma_nominal(S0,S, S1, G):-
    nombre(S1,S),
    determinante(S0,S1,G ).

sintagma_nominal(S0,S, S1, G):-
    nombre(S0,S).

%---Sintagma verbal---
% sintagma_verbal(Oración preliminar, Oración).
sintagma_verbal(Verbo,Persona):-verbo(Verbo,S),member(Persona,S).

sintagma_verbal(Verbo, Persona) :-
    verbo(Verbo, S1),
    member(Persona, S1),
    verbo(Verbo, S2),
    member(Persona, S2).




%------------Base de datos del BNF--------------
%determinante(Determinante, Oración, Género)
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
%pronombre(Pronombre, Oración)
pronombre([yo|Rest],Rest).
pronombre([el|Rest],Rest).
pronombre([ella|Rest],Rest).
pronombre([ellos|Rest],Rest).

%nombres de las comidas
%nombre(Nombre, Oración)
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
nombre([entraña| Rest], Rest).
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
nombre(['Postre sin azúcar'| Rest], Rest).


%Verbos y sus conjugados
verbo(Verbo, Conjugaciones) :-
    member(Verbo, ["comer", "desayunar", "almorzar", "cenar", "tomar", "beber", "visitar", "querer", "estar", "ir", "ingerir", "consumir", "degustar", "buscar", "recomendar", "haber"]),
    member(Conjugaciones, [
        ['como', 'comes', 'come', 'comemos', 'comen', 'comería', 'comerían'],
        ['desayuno', 'desayunas', 'desayuna', 'desayunamos', 'desayunan', 'desayunaría', 'desayunarían'],
        ['almuerzo', 'almuerzas', 'almuerza', 'almorzamos', 'almuerzan', 'almorzaría', 'almorzarían'],
        ['ceno', 'cenas', 'cena', 'cenamos', 'cenan', 'cenaría', 'cenarían'],
        ['tomo', 'tomas', 'toma', 'tomamos', 'toman', 'tomaría', 'tomarían'],
        ['bebo', 'bebes', 'bebe', 'bebemos', 'beben', 'bebería', 'beberían'],
        ['visito', 'visitas', 'visita', 'visitamos', 'visitan', 'visitaría', 'visitarían'],
        ['quiero', 'quieres', 'quiere', 'queremos', 'quieren', 'querría', 'querrían', 'quisiera', 'quisieran'],
        ['estoy', 'estás', 'está', 'estamos', 'están', 'estaría', 'estarían'],
        ['voy', 'vas', 'va', 'vamos', 'van', 'iría', 'irían'],
        ['ingiero', 'ingieres', 'ingiere', 'ingerimos', 'ingieren', 'ingeriría', 'ingerirían'],
        ['consumo', 'consumes', 'consume', 'consumimos', 'consumen', 'consumiría', 'consumirían'],
        ['degusto', 'degustas', 'degusta', 'degustamos', 'degustan', 'degustaría', 'degustarían'],
        ['busco', 'buscas', 'busca', 'buscamos', 'buscan', 'buscaría', 'buscarían'],
        ['recomiendo', 'recomiendas', 'recomienda', 'recomendamos', 'recomiendan', 'recomendaría', 'recomendarían'],
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

%Se hace una lista de las palabras ingresadas por el usuario como átomos
parseInput([C|InputList], [A|Result]):-
    atom_string(A,C),
    parseInput(InputList,Result).


%Entradas: Input es la entrada de texto del usuario
%Salidas: R será la entrada en formato analizable
getInput(Input,R):-
    split_string(Input," ",".",R1),
    parseInput(R1,R).



%Para el Menú
obtenerMenu(Restaurante, Menu):- restaurante(Restaurante, [menu, _, Menu|_], _, _, _).

%Para la dirección del restaurante
obtenerDireccion(Restaurante, Direccion) :-restaurante(Restaurante, _, [direccion, Direccion|_], _, _).

%Para obtener la provinvia donde está el restaurante
obtenerLugar(Restaurante, Lugar) :-restaurante(Restaurante, _, _, [lugar, Lugar], _).

obtenerLugar(Restaurante, Lugar) :-  write("Lo sentimos, no se conoce algún restaurante con ese tipo específico de comida en ese lugar"), nl, nl,
    restaurantec.

%Para obtener ciertas disposiciones de los restaurantes
obtener_disposiciones(Restaurante, Disposiciones) :-restaurante(Restaurante, _, _, _, [disposiciones, Disposiciones]).

%Buscar una comida específica
comidaEspecifica(Restaurante, TipoComida) :-restaurante(Restaurante, [_, _, Menu|_], _, _, _),  member(TipoComida, Menu).

comidaEspecifica(_K,_Y):-
    write("Lo sentimos, no se conoce algún restaurante con ese tipo específico de comida"), nl, nl,
    restaurantec.

validarlugar(K, Y) :-
    ubicacion(_, Y, _),
    obtenerLugar(K, Y).


validarlugar(_K,_Y):-
    write("Lo sentimos, no se conoce algún restaurante con sus preferencias en ese lugar"), nl, nl,
    restaurantec.


%======================  PRINCIPAL  ========================%
% Función principal que hace las preguntas al usuario además de ser
% utilizada como interfaz.
% Entradas: Ninguna.
% Salidas: Ninguna.
% Restricciones: Contempladas en las validaciones

restaurantec:-
    write("¡Bienvenido! ¿Que te se antoja comer hoy? Escriba su preferencia entre comillas, todo en minúscula, y con punto final por favor."), nl,

    read(InputAlimento),
    % InputAlimento es el input de usuario de preferencia de alimento
    % InputAlimentoParseado es el input para poder analizarse
    getInput(InputAlimento,InputAlimentoParseado),

    % AlimentoClave es la palabra clave de la frase del alimento
    alimento(InputAlimentoParseado,[],AlimentoClave),

    %K será el restaurante candidato
    comidaEspecifica(AlimentoClave, K),

    %
    write("¿Dónde se te antoja comer?"), nl,

    read(InputLugar),

    % InputLugar es el input de usuario de preferencia de lugar
    % InputLugarParseado es el input para poder analizarse
    getInput(InputLugar,InputLugarParseado),

    % LugarClave es la palabra clave de la frase del lugar
    ubicacion(InputLugarParseado,[],[LugarClave|_]),

    %P será el lugar clave como string
    atom_string(LugarClave, P),

    obtenerLugar(K, P),




    %nombre del restaurante y dirección
    obtenerDireccion(N,D),

    atom_concat("Nuestra sugerencia es: Restaurante ", N, O1),
    atom_concat(O1, " que se ubica ", O2),
    atom_concat(O2, D, O3),

    %O3 es la frase completa de la recomendación
    write(O3), nl,
    write("Su reservación ha sido tramitada."), nl,
    %D son las disposiciones de los restaurantes
    obtener_disposiciones(K, D),
    write(D),nl, nl,

    %Se llama recursivamente por si el usuario quiere volver a consultar
    restaurantec.




















