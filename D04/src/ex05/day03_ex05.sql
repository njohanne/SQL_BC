select distinct pizzeria.name from person
join person_visits on person_visits.person_id=person.id
join pizzeria on pizzeria.id=person_visits.pizzeria_id
where person.name='Andrey'
except
select pizzeria.name from person
join person_order on person_order.person_id=person.id
join menu on menu.id=person_order.menu_id
join pizzeria on pizzeria.id=menu.pizzeria_id
where person.name='Andrey'
order by 1