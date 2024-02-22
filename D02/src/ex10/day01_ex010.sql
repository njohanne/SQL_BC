select p.name, m.pizza_name, pi.name
from person_order as p_o
left join person as p
on p.id = p_o.person_id
left join menu as m
on m.id = p_o.menu_id
left join pizzeria as pi
on m.pizzeria_id = pi.id
order by 1, 2, 3