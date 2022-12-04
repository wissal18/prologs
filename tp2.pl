pair(0).
pair(X) :- X>0, X2 is X-2, pair(X2).

fibonacci(1,1).
fibonacci(2,1).
fibonacci(X,N):- N>2,U is N-1,V is N-2,fibonacci(U,U1),fibonacci(V,V1),X is U1+V1.

somme(0,0).
somme(N,X) :- N>0, N1 is N-1, somme(N1,X1), X is N+X1.

affiche([]).
affiche([X|R]):- write(X),nl,affiche(R).

afficheInv([]).
afficheInv([X|R]) :- afficheInv(R),nl,write(X).

premier([X|_]):- write(X).

premier([X|_],X).

dernier([X]) :- write(X).
dernier([_|L]) :- dernier(L).

dernierAppend(L,Last):- append(_, [Last], L).

dernier([X],X).
dernier([_|L],X) :- dernier(L,X).

compte([],0).
compte([_|R],N) :- compte(R,N1), N is N1+1, N>0.

sommeL([],0).
sommeL([X|R],N) :- sommeL(R,N1), N is N1+X.

nieme(1,[X|_],X) :- !.
nieme(N,[_|R],X) :- N1 is N-1, nieme(N1,R,X).

occurrence([],_,0).
occurrence([X|L],X,N) :- occurrence(L,X,N1),N is N1+1.
occurrence([Y|L],X,N) :- X\==Y,occurrence(L,X,N).

substitue(_,_,[],[]).
substitue(X,Y,[X|R],[Y|R1]) :- substitue(X,Y,R,R1).
substitue(X,Y,[Z|R],[Z|R1]) :- X\==Z, substitue(X,Y,R,R1).