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