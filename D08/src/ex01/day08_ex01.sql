begin; --session 1

begin; --session 2

select * from pizzeria where name  = 'Pizza Hut'; --session 1

select * from pizzeria where name  = 'Pizza Hut'; --session 2

UPDATE pizzeria set rating = 4 where name = 'Pizza Hut'; --session 1

UPDATE pizzeria set rating = 4 where name = 'Pizza Hut'; --session 2

commit ; --session 1

commit ; --session 2

select * from pizzeria where name  = 'Pizza Hut'; --session 1

select * from pizzeria where name  = 'Pizza Hut'; --session 2
