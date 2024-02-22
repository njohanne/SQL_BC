insert into person_visits
select *, '2022-02-24'::date as visit_date
from (select max(id)+2 from person_visits) as id,
(select id from person where name='Irina') as person_id,
(select id from pizzeria where name='Dominos') as pizzeria_id
union
select *, '2022-02-24'::date as visit_date
from (select max(id)+1 from person_visits) as id,
(select id from person where name='Denis') as person_id,
(select id from pizzeria where name='Dominos') as pizzeria_id