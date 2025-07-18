% ex1:

distance((A,B),(C,D),X) :- X is sqrt((C-A)**2 + (D-B)**2).

% ex2:

fib(0,1).
fib(1,1).
fib(N,X) :- 2 =< N, M is N - 1, fib(M, Y), P is N - 2, fib(P, Z), X is Y + Z.

fibo(0,0,1).
fibo(1,1,1).
fibo(N,Z,X) :- 2 =< N, M is N-1, fibo(M,Y,Z), X is Y + Z.

fibg(N,X) :- fibo(N,_,X).

% ex3:

line(0,_).
line(X,C):- X>0, Y is X-1, write(C), line(Y,C).

rectangle(0,_,_):-nl.
rectangle(X,Z,C):- X>0, Y is X-1, line(Z,C), nl, rectangle(Y,Z,C).
square(X,C) :- rectangle(X,X,C).

% ex4:

all_a([]).
all_a([a|X]):-all_a(X).

trans_a_b([],[]).
trans_a_b([a|X],[b|Y]):-trans_a_b(X,Y).

% x5:

scalarMult(_,[],[]).
scalarMult(N,[H|T],[X|Y]) :- X is N * H, scalarMult(N,T,Y).

dot([],[],0).
dot([H|T],[X|Y],M) :- dot(T,Y,N), M is N + H * X.

max([],0).
max([H|T],X) :- max(T,Y), maxim(H,Y,X).

maxim(A,B,B) :- B>A.
maxim(A,B,A) :- A>=B.