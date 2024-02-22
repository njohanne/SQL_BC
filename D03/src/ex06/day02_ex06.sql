недоделано

with exp as (select menu.pizza_name as pizza_name, pizzeria.name as pizzeria_name, person.name as person_name
			from person_order
			left join person on person.id=person_id
			left join menu on menu.id=menu_id
			left join pizzeria on pizzeria.id=pizzeria_id)
select pizza_name, pizzeria_name from exp
where person_name='Anna' or person_name='Denis'
order by 1, 2