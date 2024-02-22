select coalesce(person.name, '-') as person_name,
visit_date,
coalesce (v_d.name, '-') as pizzeria_name
from person
full join (select * from (select * from person_visits where visit_date between '2022-01-01' and '2022-01-03') as v_d
		  full join pizzeria as person on person.id=v_d.pizzeria_id) as v_d on person.id=v_d.person_id
order by 1, 2, 3
