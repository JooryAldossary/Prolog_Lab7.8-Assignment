% Task 1: Delete every occurrence of X.
deleteElement(_, [], []).

deleteElement(X, [X|Tail], Result) :-
    deleteElement(X, Tail, Result).

deleteElement(X, [Y|Tail], [Y|Result]) :-
    X \= Y,
    deleteElement(X, Tail, Result).

% Task 2: Add X at the end of the list.
add_at_the_end(X, [], [X]).

add_at_the_end(X, [H|Tail], [H|Result]) :-
    add_at_the_end(X, Tail, Result).

% Example queries:
% ?- deleteElement(1, [1,2,1,3,1], R).
% R = [2,3].
% ?- deleteElement(3, [1,2,3,4], R).
% R = [1,2,4].
% ?- add_at_the_end(4, [1,2,3], R).
% R = [1,2,3,4].
% ?- add_at_the_end(d, [a,b,c], R).
% R = [a,b,c,d].
