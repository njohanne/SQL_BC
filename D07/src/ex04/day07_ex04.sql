select p.name, count (pz.name) count_of_visits 
from person p
inner join person_visits pv on pv.person_id = p.id
inner join pizzeria pz on pz.id = pv.pizzeria_id
group by 1
having count(*)>3