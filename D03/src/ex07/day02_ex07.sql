select distinct name_pizzeria from (select pizzeria.name as name_pizzeria, pizzeria_id as p_i from person_visits
								   left join person on person.id=person_id
								   left join pizzeria on pizzeria.id=pizzeria_id
								   where person.name='Dmitriy' and visit_date='2022-01-08') as exp
left join menu on menu.pizzeria_id=p_i
where menu.price<800