% ===== SHOPPING PROGRAM =====

% Start with five items
shopping :-
    menu([coffee, milk, chocolate, apple, juice]).

% Display the menu
menu(Basket) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    action(Choice, Basket).

% Display all items
action(d, Basket) :-
    display_items(Basket),
    menu(Basket).

% Add an item
action(a, Basket) :-
    write('Enter the item you want to add: '),
    read(Item),
    append(Basket, [Item], NewBasket),
    write('The item has been added.'), nl,
    menu(NewBasket).

% Exit
action(e, _) :-
    write('Goodbye!'), nl.

% Invalid option
action(_, Basket) :-
    write('Invalid choice. Try again.'), nl,
    menu(Basket).

% Display items recursively
display_items([]).

display_items([Head|Tail]) :-
    write(Head), nl,
    display_items(Tail).
	
% ==========================================
% TEST QUERIES AND RESULTS
% ==========================================

% 101 ?- consult(['c:/Users/snoof/OneDrive/Desktop/shopping.pl']).
% true.

% 102 ?- shopping.

% ** SHOPPING LIST **
% d. display all items.
% a. add an item to the list.
% e. exit.
% ENTER YOUR CHOICE: d.
% coffee
% milk
% chocolate
% apple
% juice

% ** SHOPPING LIST **
% d. display all items.
% a. add an item to the list.
% e. exit.
% ENTER YOUR CHOICE: a.
% Enter the item you want to add: bread.
% The item has been added.

% ** SHOPPING LIST **
% d. display all items.
% a. add an item to the list.
% e. exit.
% ENTER YOUR CHOICE: d.
% coffee
% milk
% chocolate
% apple
% juice
% bread

% ** SHOPPING LIST **
% d. display all items.
% a. add an item to the list.
% e. exit.
% ENTER YOUR CHOICE: x.
% Invalid choice. Try again.

% ** SHOPPING LIST **
% d. display all items.
% a. add an item to the list.
% e. exit.
% ENTER YOUR CHOICE: e.
% Goodbye!
% true.