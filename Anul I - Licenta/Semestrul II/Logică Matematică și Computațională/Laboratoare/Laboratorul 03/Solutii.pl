% ex1:

rev([],[]).
rev([H|T], L) :- rev(T,N), append(N,[H],L).

palindrome(L) :- rev(L,L).

% ex2:

remove_duplicates([],[]).
remove_duplicates([H|L],M) :- remove_duplicates(L,M), member(H,M).
remove_duplicates([H|L],[H|M]) :- remove_duplicates(L,M), not(member(H,M)).

% ex3:

atimes(_,[],0).
atimes(N,[N|T],X) :- atimes(N,T,Y), X is Y + 1.
atimes(N,[H|T],X) :- atimes(N,T,X), H \= N.

% ex4:

insertsort([],[]).
insertsort([H|T],L) :- insertsort(T,L1), insert(H,L1,L).

insert(X,[],[X]).
insert(X,[H|T],[X|[H|T]]) :- X < H.
insert(X,[H|T],[H|L]) :- X >= H, insert(X,T,L).

% ex5:

quicksort([],[]).
quicksort([H|T],L) :- split(H,T,A,B), quicksort(A,M), quicksort(B,N),
                        append(M,[H|N],L).
split(_,[],[],[]).
split(X,[H|T],[H|A],B) :- H < X, split(X,T,A,B).
split(X,[H|T],A,[H|B]) :- H >= X, split(X,T,A,B).