% Using accumulator idiom again, though this is bad if we wanted to make this parallel in future.
% Guy Steele would not approve!:)

% acc_sort/3
acc_sort([],Acc,Acc). % simplest succeeding edge cases first
acc_sort([Head|Tail],Acc,SortedList) :- my_insert(Head,Acc,NextAcc), acc_sort(Tail,NextAcc,SortedList).

% my_insert/3
% named my_insert because I think there might already be a GNU Prolog insert/3??
my_insert(X,[],[X]). % simplest succeeding edge cases first
my_insert(X,[Y|Tail],[Y|NextTail]) :- X > Y, my_insert(X, Tail, NextTail).
my_insert(X,[Y|Tail],[X,Y|Tail]) :- X =< Y.

% list_sort/2
list_sort(List,SortedList) :- acc_sort(List,[],SortedList).

% Test cases below
%list_sort([4, 3, 4, 1, 2, 4, 8, 99, 4], [1, 2, 3, 4, 4, 4, 4, 8, 99]).
%list_sort([5,4,3,2,1], [1,2,3,4,5]).
%list_sort([1,1,2,3], [1,1,2,3]).
