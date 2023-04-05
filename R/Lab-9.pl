likes(ram,mango).
girl(abhay).
red(rose).
like(bill,cindy).
owns(john,gold).

father(shivam,abhay).
father(shivam,jitam).
game(bgmi,krafton).

len([],0).
len([_|L],N):-
    len(L,N1),
    N is N1+1.
% IF length of l is N1 , then length of [_|L] will be N1
is_member(X,[X |_]) :- !.
