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

% Restaurant facts
restaurant('Restaurant A', 'New York', 'Italian').
restaurant('Restaurant B', 'London', 'Indian').
restaurant('Restaurant C', 'Paris', 'French').
restaurant('Restaurant D', 'New York', 'Mexican').
% Add more restaurants and their attributes as needed

% Rules for querying and recommending restaurants
restaurant_suggestion(Location, Cuisine) :-
  restaurant(Name, Location, Cuisine),
  format('I recommend ~w in ~w which serves ~w cuisine.', [Name, Location, Cuisine]).

% Inference rules
recommend_restaurant(Location, Cuisine) :-
  location(Location),
  cuisine(Cuisine),
  restaurant_suggestion(Location, Cuisine).

% Domain knowledge
location('New York').
location('London').
location('Paris').

cuisine('Italian').
cuisine('Indian').
cuisine('French').
cuisine('Mexican').

% Entry point for the expert system
start_expert_system :-
  write('Hello, what do you want to eat today?'), nl,
  write('Please enter your location: '),
  read(Location),
  write('Please enter your preferred cuisine: '),
  read(Cuisine),
  nl,
  recommend_restaurant(Location, Cuisine).

% Entry point for the expert system
:- initialization(start_expert_system).
