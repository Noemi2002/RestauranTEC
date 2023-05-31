%Base de datos completa (no se dividió)


%Definición de la base de datos
%Hechos para la base de datos de restaurantes
restaurante('Mcdonalds', [menu, 'comida rapida', [hamburguesas, pollo_frito, nuggets, wraps, ensaladas, papas, refresco, milkshake, cafe]], [direccion, 'costado sur de plaza mayor, avenida 2'], [lugar, 'Cartago'], [disposiciones, ['No se aceptan mascotas', 'Hay autoservicio']]).

restaurante('La princesa marina', [menu, 'mariscos', [pescado, camarones, langosta, calamares, pulpo, mejillones, ostras]], [direccion, 'calle principal, puerto viejo'], [lugar, 'Limon'], [disposiciones, ['Terraza con vista al mar', 'Aceptan reservaciones']]).

restaurante('Papajohns', [menu, 'italiana', [pizza, pasta, ensaladas, lasagna, calzone, tiramisu, gelato]], [direccion, 'avenida central, san jose'], [lugar, 'San Jose'], [disposiciones, ['Menu para niños', 'Entrega a domicilio']]).

restaurante('Sushi Ko', [menu, 'japonesa', [sopa, gyozas, ostras, 'Spicy Edamame', 'Edamame Binchotan' ]], [direccion, 'METRO CENTRO, San José'], [lugar, 'San Jose'], [disposiciones, ['Comida artesanal', 'Comida para llevar']]).

restaurante('La Esquina de Buenos Aires', [menu, argenita, [morcilla, chorizo, chinchulin, provoleta, lomito, entraña, ensaladas, vino]], [direccion, 'Iglesia Nuestra Señora de la Soledad, Calle 11 esquina Av. 4 Detrás de la, San José'], [lugar, 'Heredia'], [disposiciones, ['Pedidos por whatsapp']]).

restaurante('Stiefel Pub', [menu, alemana,['cervezas artesanales',pizza, alistas, papas]], [direccion, 'Av. 26, San Jose, Escazú'], [lugar, 'San Jose'], [disposiciones, ['comida de bar', 'Entrega a domicilio', 'Se permiten mascotas']]).

restaurante('Tin Jo', [menu, 'asiática (chinos, tailandeses, vietnamitas)', [camarones, ramen, wantan, sushi, samosas]], [direccion, 'Calle 11, entre Avs. 6 y 8, C. 11, Provincia de San Jose'], [lugar, 'San Jose'], [disposiciones, ['Se puede pedir desde el auto', 'Se tiene que hacer reservación']]).

restaurante('Veggie Delights', [menu, vegana, ['Burgers veganas', 'Ensaladas frescas', 'Wraps de verduras', 'Batidos naturales']], [direccion, 'WWHH+PPR, González Lahmann, San Jose'], [lugar, 'San Jose'],[disposiciones, ['Comida para llevar o en el lugar ']]).

restaurante('La Casona Mexicana', [menu, mexicana, [tacos, alambres, burritos, sopas, postres, parrilla, cocteles, tequila, mezcal]], [direccion, '300m Este del Puente Bailey, carretera al Volcán Irazú, Vía 219, Provincia de Cartago, Cartago'], [lugar, 'Cartago'], [disposiciones, ['Se requiere reservación']]).

restaurante('PetFriendly Bistro', [menu, 'Comida gourmet y opciones sin gluten', ['Salmón a la parrilla', 'Ensalada de quinoa', 'Postre sin azúcar']], [direccion, 'Santa Ana'], [lugar, 'San Jose'], [disposiciones, ['Pet-friendly', 'Área específica para mascotas']]).


% Identificación de palabras clave y valores

% Predicado para verificar si una palabra es una palabra clave
palabra_clave(Palabra) :-
    member(Palabra, ['menu', 'direccion', 'lugar', 'disposiciones']).

% Predicado para extraer el valor asociado a una palabra clave
extraer_valor(PalabraClave, [PalabraClave, Valor|_], Valor) :- !.
extraer_valor(PalabraClave, [_|Resto], Valor) :-
    extraer_valor(PalabraClave, Resto, Valor).

% Ejemplo de uso

% Consulta para obtener la dirección del restaurante 'Mcdonalds'
%?- restaurante('Mcdonalds', Datos),
 %  extraer_valor(direccion, Datos, Direccion).

% Resultado:
% Datos = [menu, 'comida rapida', [hamburguesas, pollo_frito, nuggets, wraps, ensaladas, papas, refresco, milkshake, cafe]],
% [direccion, 'costado sur de plaza mayor, avenida 2'], [lugar, cartago], [capacidad, 50], [disposiciones, ['No se aceptan mascotas', 'Hay autoservicio']]
% Direccion = 'costado sur de plaza mayor, avenida 2'





