insert into person_order
select exp2+(select max(id) from person_order), person.id, exp1.id, '2022-02-25' as order_date
from generate_series(1, (select max(id) from person), 1) as exp2
left join (select id from menu where pizza_name='greek pizza') as exp1 on exp1=exp1
left join person on exp2=person.id;