insert into person_discounts
select row_number() over () as id, person.id as person_id, pizzeria.id as pizzeria_id,
	 case
	 when count(*)=1 then 10.5
	 when count(*)=2 then 22
	 else 30
	 end discount
from person_order
join person on person.id=person_order.person_id
join menu on menu.id=person_order.menu_id
join pizzeria on pizzeria.id=menu.pizzeria_id
group by 2,3