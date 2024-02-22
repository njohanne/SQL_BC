(select pz.name, count(*) as count, 'order' as action_type
from pizzeria pz
inner join menu m on m.pizzeria_id=pz.id
inner join person_order po on po.menu_id=m.id
group by 1
order by 2 desc
limit 3)
union
(select pz.name, count(*) as count, 'visit' as action_type
from pizzeria pz
inner join person_visits pv on pv.pizzeria_id=pz.id
group by 1
order by 2 desc
limit 3)
order by 3, 2 desc