%Base de datos completa (no se dividi�)

%Identificaci�n de palabras claves y valores
%Hechos para reconocer palabras clave y sus valores
palabra_clave(comer).
palabra_clave(menu).
palabra_clave(direccion).
palabra_clave(lugar).

%Reglas para identificar los valores correspondientes a las palabras clave
valor(comer, comida_rapida).
valor(comer, italiana).
valor(comer, argentina).
valor(comer, japonesa).
valor(comer, mariscos).
valor(menu, hamburguesa).
valor(direccion, 'San Pedro-San Jos�').
valor(direccion, alajuela).


%Definici�n de la base de datos
%Hechos para la base de datos de restaurantes
restaurante('Mcdonalds', [menu, 'comida rapida', [hamburguesas, pollo_frito, nuggets, wraps, ensaladas, papas, refresco, milkshake, cafe]], [direccion, 'costado sur de plaza mayor, avenida 2'], [lugar, cartago], [capacidad, 50], [disposiciones, ['No se aceptan mascotas', 'Hay autoservicio']]).

restaurante('La princesa marina', [menu, 'mariscos', [pescado, camarones, langosta, calamares, pulpo, mejillones, ostras]], [direccion, 'calle principal, puerto viejo'], [lugar, limon], [capacidad, 30], [disposiciones, ['Terraza con vista al mar', 'Aceptan reservaciones']]).

restaurante('Papajohns', [menu, 'italiana', [pizza, pasta, ensaladas, lasagna, calzone, tiramisu, gelato]], [direccion, 'avenida central, san jose'], [lugar, 'San Jose'], [capacidad, 40], [disposiciones, ['Menu para ni�os', 'Entrega a domicilio']]).

restaurante('Sushi Ko', [menu, 'japonesa', [sopa, gyozas, ostras, 'Spicy Edamame', 'Edamame Binchotan' ]], [direccion, 'METRO CENTRO, San Jos�'], [lugar, 'San Jose'], [disposiciones, ['Comida artesanal', 'Comida para llevar']]).

restaurante('La Esquina de Buenos Aires', [menu, argenita, [morcilla, chorizo, chinchulin, provoleta, lomito, entra�a, ensaladas, vino]], [direccion, 'Iglesia Nuestra Se�ora de la Soledad, Calle 11 esquina Av. 4 Detr�s de la, San Jos�'], [lugar, heredia], [disposiciones, ['Pedidos por whatsapp']]).

restaurante('Stiefel Pub', [menu, alemana,['cervezas artesanales',pizza, alistas, papas]], [direccion, 'Av. 26, San Jose, Escaz�'], [lugar, 'San Jose'], [disposiciones, ['comida de bar', 'Entrega a domicilio', 'Se permiten mascotas']]).

restaurante('Tin Jo', [menu, 'asi�tica (chinos, tailandeses, vietnamitas)', [camarones, ramen, wantan, sushi, samosas]], [direccion, 'Calle 11, entre Avs. 6 y 8, C. 11, Provincia de San Jose'], [lugar, 'San Jose'], [disposiciones, ['Se puede pedir desde el auto', 'Se tiene que hacer reservaci�n']]).

restaurante('Veggie Delights', [menu, vegana, ['Burgers veganas', 'Ensaladas frescas', 'Wraps de verduras', 'Batidos naturales']], [direccion, 'WWHH+PPR, Gonz�lez Lahmann, San Jose'], [lugar, 'San Jose'],[disposiciones, ['Comida para llevar o en el lugar ']]).

restaurante('La Casona Mexicana', [menu, costarricense, [tacos, alambres, burritos, sopas, postres, parrilla, cocteles, tequila, mezcal]], [direccion, '300m Este del Puente Bailey, carretera al Volc�n Iraz�, V�a 219, Provincia de Cartago, Cartago'], [lugar, 'Cartago'], [disposiciones, ['Se requiere reservaci�n']]).

restaurante('PetFriendly Bistro', [menu, 'Comida gourmet y opciones sin gluten', ['Salm�n a la parrilla', 'Ensalada de quinoa', 'Postre sin az�car']], [direccion, 'Santa Ana'], [lugar, 'San Jose'], [disposiciones, ['Pet-friendly', '�rea espec�fica para mascotas']]).





