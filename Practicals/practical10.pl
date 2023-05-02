% prolog program to implement max(X,Y,Max) 
% so that Max is greater of two numbers X and Y.

max(X,Y,Max) :- 
	X>Y -> Max is X;
	Y>X -> Max is Y;
	X=Y -> write("both are equal"), Max is X.
