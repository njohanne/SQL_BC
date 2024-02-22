with exp as (select menu.pizza_name as pizza_name, pizzeria.name as pizzeria_name, person.name as person_name from person_order
			left join menu on menu.id=menu_id
			left join pizzeria on pizzeria.id=pizzeria_id
			left join person on person.id=person_id
			where person.gender='female')
select person_name from exp
where pizza_name='cheese pizza' and person_name in (select person_name from exp where pizza_name='pepperoni pizza')
order by 1