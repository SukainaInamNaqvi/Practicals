/* prolog program to implement maxlist(List,Max) 
 	so that Max is the greatest number in the list of number list. */
 	

 	
maxlist([H|T],Max) :- 
	length(T,L),
	L>0 ->
	(
		maxlist(T,MaxRec),
		(
			H > MaxRec -> Max is H ; Max is MaxRec	
		
		)
	
	) ;
	Max is H.
