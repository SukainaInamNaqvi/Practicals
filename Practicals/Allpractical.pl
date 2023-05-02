% prolog program to calculate the  factorial of a given number

% Write a Prolog program to calculate the factorial of a given number.


fact(0,1).
fact(N,F):-
(

 % The below is for +ve factorial.
 N>0 ->
 (
  N1 is N-1,
  fact(N1,F1),
  F is N*F1
 )
 ;
 

 % The below is for -ve factorial.
 N<0 ->
 (
  N1 is N+1,
  fact(N1,F1),
  F is N*F1
 )
).

% Output



% Write a Prolog program to implement append for two lists.


/*concatenate*/
conc([],L,L).
conc([X|M],N,[X|Q]):-
 conc(M,N,Q). 
 
 
 
 % Write a Prolog program, insert_nth(item, n, into_list, result) that asserts
% that result is the list into_list with item inserted as the n’th element into 
% every list at all levels.

/*append(l1,l2,l3). */ 
mem(X,[X|_]).
mem(X,[_|T]):- mem(X,T).

/* insert  a number in the list. */ 
 insert(L,[X|Y],[L|_]).
 insert(L,P,[X|Y],[X|M]):-
 P>1,
 P1 is P-1,
 insert(L,P1,Y,M).
 insert(L,1,[X|Y],M):- append([L],[X|Y],M).

% Output

% Write a Prolog program to remove the Nth item from a list.

/*delete a number in the list. */
delte(1,[_|T],T).
delte(P,[X|Y],[X|R]):-
 P1 is P-1,
 delte(P1,Y,R).

% Output% Write a Prolog program, remove-nth(Before, After) that asserts the After list
% is the Before list with the removal of every n’th item from every list at all 
% levels.

/*delete a number in the list. */
delte(1,[_|T],T).
delte(P,[X|Y],[X|R]):-
 P1 is P-1,
 delte(P1,Y,R).

/* delete before and after. */
daltob(P,L,R):-
 P1 is P-1,
 delte(P1,L,R1),
 /* delete before. */
 delte(P,R1,R).
 /* delete after. */


% Output

% Write a Prolog program to implement max(X,Y,Max) so that Max is the greater of
% two numbers X and Y.

/* Max of two #.s */

/* without list. */
max(X,Y,R):-
 X>=Y -> 
  R is X, 
  write(R)
 ;
  R is Y,
  write(R).


/* with list. */
grandiose([H|T],R):-
 H>T -> 
  R is H,
  write(R)
  ;
  R is T,
  write(T).

% Output

% Write a Prolog program to implement maxlist(List,Max) so that Max is the 
% greatest number in the list of numbers List.


/* Max of n-#.s in a list. */
maxlist([H|T],R):-
 length(T,L),
 L>0 ->
 (
  maxlist(T,R1),
  (
   H > R1 -> 
     R is H
    ;
     R is R1
  )
 ) 
 ;
 R is H.

% Output

% Write a Prolog program to implement sumlist(List,Sum) so that Sum is the sum of
% a given list of numbers List.

/* Sum of the numbers from the list. */

sumlist([],0).
  
sumlist([H|T],R):-
  sumlist(T,R1),
  R is H+R1.

% Output


% Write a Prolog program to implement GCD of two numbers.

/* GCD of two numbers. */
gcd(X,0,X).
gcd(X,Y,Z):- 
 R is mod(X,Y),
 gcd(Y,R,Z).

% Output



% Write a Prolog program to implement two predicates evenlength(List) and
% oddlength(List) so that they are true if their argument is a list of even or
% odd length respectively.

evenlength:-
 write('true --> even').
oddlength:-
 write('true --> odd').

oddeven([H|T]):-
 length(T,L),
 L>=0 ->
 (
  L1 is L+1,
  L2 is mod(L1,2),
  L2=:=0 ->
   evenlength
  ;
   oddlength
 ).

% Output

% Reference : mycurlycode blogpost
