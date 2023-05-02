% prolog program to implement GCD of two nummbers

g(R,0,R).

g(BN,SN,Ans) :-
	Rd is mod(BN,SN),
	g(SN,Rd,Ans).
