/* 
	prolog program to implement 
	reverse(List,ReverseList)
	so that ReverseList is the reverse of the List.
*/

/*
reverse([H|T],[RH|RT]) :-
	length(T,L),
	L>0 -> 
	(
		reverse(T,RH),
		(
			RT is H
		)
	);
	RT is H.

	
*/

reverse(List,ReverseList) :-
	reverse(List,ReverseList,[]).
	
reverse([H|T],List,RecRvList) :-
	reverse(T,List,[H|RecRvList]).
	
reverse([],L,L).
