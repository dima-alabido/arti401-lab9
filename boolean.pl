and(true,true,true).
and(true,false,false).
and(false,true,false).
and(false,false,false).

or(true,true,true).
or(true,false,true).
or(false,true,true).
or(false,false,false).

neg(true,false).
neg(false,true).

logicGate(A,B,O) :-
    and(A,B,X),
    neg(A,Y),
    neg(B,Z),
    and(Y,Z,W),
    or(X,W,O).
