select menu.pizza_name, menu.price, pizzeria.name as pizzeria_name, person_visits.visit_date from person_visits
inner join person on person_visits.person_id=person.id
inner join pizzeria on person_visits.pizzeria_id=pizzeria.id
inner join menu on menu.pizzeria_id=pizzeria.id
where person.name='Kate' and price between 800 and 1000
order by 1, 2, 3