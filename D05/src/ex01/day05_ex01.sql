set enable_seqscan=off;
explain analyze
select menu.pizza_name as pizza_name, pizzeria.name as pizzeria_name
from menu
join pizzeria on pizzeria.id=menu.pizzeria_id