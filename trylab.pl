find_divisors(N, Divisors) :-
    findall(D, (between(1, N, D), N mod D =:= 0), Divisors).

start :-
    write('Ââåäèòå ÷èñëî: '),
    read(N),
    find_divisors(N, Divisors),
    write('Äåëèòåëè: '), write(Divisors), nl.
