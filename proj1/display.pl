% Avaliação Intercalar PLOG
% Game: Xero-G
% by Afonso Mendonça & Filipe Nogueira
% example of possible board at mid game
midBoard([
    [-1 , -1 , -1 , -1 , -1 , -1 ],
    [ 0 ,  0 ,  1 ,  0 ,  0 ,  2 ],
    [ 3 ,  0 ,  0 ,  3 ,  1 ,  0 ],
    [ 0 ,  0 ,  0 ,  0 ,  0 ,  3 ],
    [ 0 ,  0 ,  3 ,  0 ,  2 ,  0 ],
    [ 0 ,  2 ,  0 ,  0 ,  0 ,  1 ],
    [ 1 ,  0 ,  2 ,  0 ,  0 ,  0 ],
    [-2 , -2 , -2 , -2 , -2 , -2 ] 
    ]).

%example of possible board at end game (player B win    )
endBoard([
    [-1 , -1 ,  2 , -1 , -1 , -1 ],
    [ 0 ,  0 ,  1 ,  0 ,  0 ,  2 ],
    [ 3 ,  0 ,  0 ,  3 ,  1 ,  0 ],
    [ 0 ,  0 ,  0 ,  0 ,  0 ,  0 ],
    [ 1 ,  0 ,  3 ,  0 ,  3 ,  1 ],
    [ 0 ,  2 ,  0 ,  0 ,  0 ,  0 ],
    [ 0 ,  0 ,  0 ,  0 ,  2 ,  0 ],
    [-2 , -2 , -2 , -2 , -2,  -2 ]
    ]).

display_startBoard:-
    startBoard(B),
    display_game(B, -1).

display_midBoard:-
    midBoard(B),
    display_game(B, -2).

display_endBoard:-
    endBoard(B),
    display_game(B, -1).


/* -------- STARTS HERE -------- */

/*
*
*/
display_game(B, P):-
    nl,
    write('TURN: '),
    display_player(P),
    nl,
    write('     0   1   2   3   4   5 \n'),
    write('  -|---|---|---|---|---|---|'),
    display_matrix(B, 0).

/*
* Displays player's turn.
* @param P
*/
display_player(P):-
    P =:= 2,
    write('Player 2').

display_player(P):- 
    write('Player 1').

/*
*
*/
display_matrix([], _).
display_matrix([H|T], Nrow):-
    write('\n '),
    write(Nrow),
    write(' | '),
    Nrow1 is Nrow+1,
    display_row(H, Nrow1),
    nl,
    write('  -|---|---|---|---|---|---|'),
    display_matrix(T, Nrow1).

/*
*
*/
display_row([], _).
display_row([H|T], Nrow):-
    display_cell(H),
    write(' | '),
    display_row(T, Nrow).

/*
* Funtions that display the cell value.
* @param 'value'
*/
display_cell(-1):- write('A').
display_cell(-2):- write('B').
display_cell(0):- write(' ').
display_cell(1):- write('o').
display_cell(2):- write('O').
display_cell(3):- write('0').

% TO-DO:
%   - display tabuleiro + flexível

    

