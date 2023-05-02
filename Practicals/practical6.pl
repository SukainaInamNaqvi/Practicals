% Prolog program to remove nth item from the list

delnth(1,[_|T],T).

delnth(Pos,[X|Y],[X|T]) :-
	Pos>1,
	Pos1 is Pos-1,
	delnth(Pos1,Y,T).
