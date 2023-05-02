% prolog program to implement palindrome(list)
% program checks whether given list is palindrome or not

palin([]) :- write('palindrome').
palin([_]) :- write('palindrome').

palin(L) :- 
	append([H|T],[H],L),
	palin(T);
	write('not a palindrome').
