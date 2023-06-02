% 1. Programa que reconoce palabras clave de entrada
palabra_clave(comer).
palabra_clave(menu).
palabra_clave(direccion).
palabra_clave(lugares).

% 2. Definición de la base de datos (hechos y reglas)
% Hechos: Restaurante(nombre, tipo, ubicacion, valoracion)
restaurante('Restaurante A', italiano, 'Calle Principal 123', 4.5).
restaurante('Restaurante B', mexicano, 'Avenida Central 456', 3.8).
restaurante('Restaurante C', chino, 'Plaza Mayor 789', 4.2).

% Reglas: buscar_restaurante(tipo, ubicacion, Restaurante)
buscar_restaurante(Tipo, Ubicacion, Restaurante) :-
    restaurante(Restaurante, Tipo, Ubicacion, _).

% 3. Interfaz de usuario
inicio :-
    writeln('Bienvenido al sistema de recomendación de restaurantes.'),
    writeln('¿Qué te gustaría hacer?'),
    menu_principal.

menu_principal :-
    writeln('1. Buscar un restaurante'),
    writeln('2. Salir'),
    read(Opcion),
    (
        Opcion =:= 1 -> buscar_restaurante;
        Opcion =:= 2 -> salir;
        writeln('Opción inválida, por favor selecciona una opción válida.'),
        menu_principal
    ).

buscar_restaurante :-
    writeln('¿Qué tipo de cocina te apetece?'),
    read(Tipo),
    writeln('¿En qué ubicación te gustaría comer?'),
    read(Ubicacion),
    buscar_restaurante(Tipo, Ubicacion, Restaurante),
    writeln('Te recomiendo el restaurante:'),
    writeln(Restaurante),
    menu_principal.

salir :-
    writeln('Gracias por utilizar el sistema de recomendación de restaurantes.').

% Consulta inicial al iniciar el programa
:- inicio.
