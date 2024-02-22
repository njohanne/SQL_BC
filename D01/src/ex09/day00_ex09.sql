select (select name from person 
		where pv.person_id=person.id) as person_name,
		(select name from pizzeria 
		 where pv.pizzeria_id=pizzeria.id) as pizzeria_name 
from (select person_id, pizzeria_id 
	  from person_visits 
	  where visit_date between '2022-01-07' and '2022-01-09') as pv
order by 1, 2 desc