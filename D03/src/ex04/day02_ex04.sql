select pizza_name, name as pizzeria_name, price from menu
inner join pizzeria on menu.pizzeria_id = pizzeria.id
where pizza_name = 'pepperoni pizza' or pizza_name = 'mushroom pizza'
order by 1, 2;