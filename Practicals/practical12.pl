/* prolog program to implement 
	sumlist(List,Sum) so that Sum is the sum of
	the given list of numbers List 
*/

sumlist([],0).

sumlist([H|T],Sum) :- 
		sumlist(T,Sum1),
		Sum is Sum1+H.	
