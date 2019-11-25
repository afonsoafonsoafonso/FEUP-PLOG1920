:-use_module(library(clpfd)).

% Alínea a)
puzzle(3, L):-
    L = [S,E,N,D,M,O,R,Y],
    domain(L, 0, 9),
    all_distinct(L),
    S #\= 0, 
    M #\= 0,
    S*1000 + E*100 + N*10 + D + M*1000 + O*100 + R*10 + E #= M*10000 + O*1000 + N*100 + E*10 + Y,
    labeling([], L).
    

    