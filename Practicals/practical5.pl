/* 
	Prolog program to insert_nth(item,n,into_list,result)
that asserts the result is list into_list with item
inserted at nth  element into every list at all level.
*/

insert(Element,Pos,[X|Tail],[X|RTail]) :- 
	Pos>1,
	Pos1 is Pos-1,
	insert(Element,Pos1,Tail,RTail).

insert(Element,1,Tail,RTail) :- append([Element],Tail,RTail).
% append  perform the below task
%	Rtail = [Element|Tail]
/*	
	which then RTail joined to the X(head of the list) 
	note :  head can be empty (i.e., [] )
*/
% end of the program.

