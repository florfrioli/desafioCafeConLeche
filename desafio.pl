%Ayuda: Existe el predicado between(Inicio, Fin, Numero) 
%el cual dado un número Inicio y un número Fin relaciona algún Numero que se encuentra entre esos otros dos.


%     %        S6     S7     S8      S9    
%     %     I1    I2     I3      I4      I5

% llamamos I a las filas inferiores, S a las superiores:
% comparamos que sean válidos, todos del 1 al 9
% Los dos inferiores suman el superior   suman(X, num1 num2)
% Y todos son distintos entre si.

seOrdenanAsi(I1,I2,I3,I4,I5,S6,S7,S8,S9) :-
    esValido(I1),
    esValido(I2),
    esValido(I3),
    esValido(I4),
    esValido(I5),
    esValido(S6),
    esValido(S7),
    esValido(S8),
    esValido(S9),
    suman(S6,I1,I2),
    suman(S7,I2,I3),
    suman(S8,I3,I4),
    suman(S9,I4,I5),
    todosDistintos(I1,I2,I3,I4,I5,S6,S7,S8,S9).
    
esValido(Num) :-
    between(1,9,Num).


% quizás haya una forma de verificar la suma directamente en lógico.
% defino solo los casos distintos, los iguales no deberían entrar.
suman(3,1,2).
suman(3,2,1).
suman(4,1,3).
suman(4,3,1).
suman(5,4,1).
suman(5,1,4).
suman(5,3,2).
suman(5,2,3).
suman(6,2,4).
suman(6,4,2).
suman(6,1,5).
suman(6,5,1).
suman(7,3,4).
suman(7,4,3).
suman(7,5,2).
suman(7,2,5).
suman(7,1,6).
suman(7,6,1).
suman(8,1,7).
suman(8,7,1).
suman(8,2,6).
suman(8,6,2).
suman(8,3,5).
suman(8,5,3).
suman(9,1,8).
suman(9,8,1).
suman(9,2,7).
suman(9,7,2).
suman(9,3,6).
suman(9,6,3).
suman(9,4,5).
suman(9,5,4).

%esto quizas pueda sacarse.

iguales(N1,N2):-
    N1=N2.

% debe haber una forma de hacer un "cumple para todos" o 
%      "existe uno que es igual a otro, por lo tanto ya no cumple"

todosDistintos(I1,I2,I3,I4,I5,S6,S7,S8,S9):-
    not(iguales(I1,I2)),
    not(iguales(I1,I3)),
    not(iguales(I1,I4)),
    not(iguales(I1,I5)),
    not(iguales(I1,S6)),
    not(iguales(I1,S7)),
    not(iguales(I1,S8)),
    not(iguales(I1,S9)),
    not(iguales(I2,I3)),
    not(iguales(I2,I4)),
    not(iguales(I2,I5)),
    not(iguales(I2,S6)),
    not(iguales(I2,S7)),
    not(iguales(I2,S8)),
    not(iguales(I2,S9)),
    not(iguales(I3,I4)),
    not(iguales(I3,I5)),
    not(iguales(I3,S6)),
    not(iguales(I3,S7)),
    not(iguales(I3,S8)),
    not(iguales(I3,S9)),
    not(iguales(I4,I5)),
    not(iguales(I4,S6)),
    not(iguales(I4,S7)),
    not(iguales(I4,S8)),
    not(iguales(I4,S9)),
    not(iguales(I5,S6)),
    not(iguales(I5,S7)),
    not(iguales(I5,S8)),
    not(iguales(I5,S9)),
    not(iguales(S6,S7)),
    not(iguales(S6,S8)),
    not(iguales(S6,S9)),
    not(iguales(S7,S8)),
    not(iguales(S7,S9)),
    not(iguales(S8,S9)).