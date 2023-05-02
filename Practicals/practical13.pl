/*
	prolog program to implement two predicate
	evenlength(List) and oddlength(List) 
	so that they are true if their argument list 
	is of even length or odd length respectively.
*/

evenlength(List) :-
	length(List,L),
	R is mod(L,2),
	R is 0.
	
oddlength(List) :- 
	length(List,L),
	R is mod(L,2),
	R is 1.
	
