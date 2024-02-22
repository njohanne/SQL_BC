insert into menu
select (select (max(menu.id)+1) from menu) as id, pizzeria, 'sicilian pizza' as pizza_name, 900 as price 
from (select pizzeria.id as pizzeria from pizzeria where pizzeria.name='Dominos') as pizzeria_id;
