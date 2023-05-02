% prolog program to remove-nth(Before, After) that 
% asserts that After list is Before list with removal 
% of every nth item from every list at all level. 


delnth(1,[_|T],T).
delnth(Pos,[X|Y],[X|T]) :-
	Pos1 is Pos-1,
	delnth(Pos1,Y,T).

remove4th(Before,After) :-
	delnth(4,Before,After).
