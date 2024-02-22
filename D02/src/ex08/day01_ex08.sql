select order_date, 
	concat (name, ' (age: ', age,')') as person_information 
from person_order
natural join (select id as person_id, name, age from person) as p
order by 1, 2;