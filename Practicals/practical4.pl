% prolog program to calculate the nth fibonacci number.

fibo(1,0,1).
fibo(N,R0,R1) :-
	N1 is N-1,
	fibo(N1,R00,R01),
	R1 is R00+R01,
	R0 is R01.
