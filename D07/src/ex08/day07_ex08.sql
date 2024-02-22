SELECT p.address, pz.name ,count(pz.name)
FROM person_order as po
JOIN person p on p.id = po.person_id
JOIN menu m on po.menu_id = m.id
join pizzeria pz on pz.id = m.pizzeria_id
GROUP BY p.address, pz.name
ORDER BY 1,2