select distinct pizza_name as pizza_name, pizzeria_name_1, pizzeria_name_2, exp1.price 
from (select distinct pizzeria.id as id1, pizzeria.name as pizzeria_name_1, menu.pizza_name as pizza_name, price as price FROM menu
	 join pizzeria on pizzeria.id=menu.pizzeria_id) as exp1
join (select pizzeria.id as id2, pizzeria.name as pizzeria_name_2, menu.pizza_name as pizza_name_2, price as price from menu
	 join pizzeria on pizzeria.id=menu.pizzeria_id) as exp2 ON exp1.price=exp2.price and exp1.pizza_name=exp2.pizza_name_2
where id1>id2