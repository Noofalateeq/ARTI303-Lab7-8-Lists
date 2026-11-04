% ===== TASK 1 - DELETE EVERY OCCURRENCE =====

% Base case: empty list
deleteElement(_, [], []).

% If the head matches X, skip it
deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).

% Otherwise keep the head
deleteElement(X, [Head|Tail], [Head|Result]) :-
    deleteElement(X, Tail, Result).


% ===== TASK 2 - ADD AT THE END =====

% Base case: empty list
add_at_the_end(X, [], [X]).

% Recursive case
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).
	
	% ==========================================
% TEST QUERIES AND RESULTS
% ==========================================

% 101 ?- consult(['c:/Users/snoof/OneDrive/Desktop/lists_tasks.pl']).
% true.

% ===== TASK 1 - DELETE EVERY OCCURRENCE =====

% 102 ?- deleteElement(1, [1,2,1,3,1], Result).
% Result = [2, 3].

% 103 ?- deleteElement(3, [1,2,3,4], Result).
% Result = [1, 2, 4].

% 106 ?- deleteElement(1, [1,2,1,4,3,4,1,1,1,3,4,2,1,1,1], List).
% List = [2, 4, 3, 4, 3, 4, 2].


% ===== TASK 2 - ADD AT THE END =====

% 104 ?- add_at_the_end(5, [1,2,3,4], List).
% List = [1, 2, 3, 4, 5].

% 105 ?- add_at_the_end(d, [a,b,c], List).
% List = [a, b, c, d].