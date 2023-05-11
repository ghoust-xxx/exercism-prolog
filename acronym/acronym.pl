first(W, R):-
    string_upper(W, U),
    sub_string(U, 0, 1, After, R).

abbreviate(Sentence, Acronym):-
    split_string(Sentence, "-_ ", "-_ ", Ls),
    maplist(first, Ls, N),
    atomics_to_string(N, '', Acronym).
