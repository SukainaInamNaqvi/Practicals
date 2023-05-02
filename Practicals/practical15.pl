/*
	prolog program to implement 
	maxlist(List,Max) so that Max is the greater
	number in the list of numbers List
	using cut predicate.
*/


maxlist([H|T],Max) :-
	maxlist(T,Max1),
	H>Max1 -> Max is H,!.
	
maxlist([H|T],Max) :-
	maxlist(T,Max1),
	H<Max1 -> Max is Max1,!.
	

