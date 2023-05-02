% prolog program to implement append two list.


apend([],L,L).

apend([X|L1Tail],L2,[X|RTail]) :-
	apend(L1Tail, L2, RTail).
	
