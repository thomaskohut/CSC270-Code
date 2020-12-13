% write a set of clauses that will compute the average of the elements of a list
% name of clause: average
% arg1: list of numerical values
% arg2: average of list.
% example:
%    average([3,14,15,9,26], 13.4).
%    true.
%

%%%% ADD YOUR CODE BELOW THIS LINE

%len and sum methods uses derivative of example from slides (Lesson 15.2 Prolog: List, Rescursion and ArithmeticFile)

%len method
len([],0).
len([H|T],L):-
    len(T,I),
    L is 1+I.

%sum method
sum([],0).
sum([HEAD|TAIL],CURRSUM):-
    sum(TAIL,REM),
    CURRSUM is REM+HEAD.

%average method (if list is empty, average is made to be 0)
average([],0).
average(TOT, AVG):-
    len(TOT, SUMLEN),
    sum(TOT, SUMTOT),
    %if length greater than 0, compute average.
    SUMLEN>0 -> AVG is SUMTOT/SUMLEN.

%%%% ADD YOUR CODE ABOVE THIS LINE

main() :-
    average([3,14,15,9,26], X),
    average([1,2,3,4,5], Y),
    average([-1, -2, 3, 2, 1, -3], Z),
    writeln(X),
    writeln(Y),
    writeln(Z),
    halt.