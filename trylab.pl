find_divisors(N, Divisors) :-
    findall(D, (between(1, N, D), N mod D =:= 0), Divisors).

start :-
    write('Введите число: '),
    read(N),
    find_divisors(N, Divisors),
    write('Делители: '), write(Divisors), nl.
