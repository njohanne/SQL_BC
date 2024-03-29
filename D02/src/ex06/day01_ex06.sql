select order_date as action_date, (select person.name 
	from person 
	where person.id = person_order.person_id) as person_name
from person_order
intersect
select visit_date as action_date, (select person.name 
	from person 
	where person.id = person_visits.person_id) as person_name
from person_visits
order by 1, 2 desc;