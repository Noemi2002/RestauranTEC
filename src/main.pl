% Grammar rules
sentence --> noun_phrase, verb_phrase.
noun_phrase --> determiner, noun.
noun_phrase --> determiner, adjective, noun.
verb_phrase --> verb.
verb_phrase --> verb, noun_phrase.
verb_phrase --> verb, preposition_phrase.
preposition_phrase --> preposition, noun_phrase.

% Lexical rules
determiner --> [the].
determiner --> [a].
adjective --> [red].
adjective --> [big].
noun --> [cat].
noun --> [dog].
noun --> [ball].
verb --> [runs].
verb --> [jumps].
preposition --> [on].
preposition --> [over].
