select pizza_name, price, pizzeria.name from menu
left join pizzeria on pizzeria.id=pizzeria_id
where menu.id not in (select menu_id from person_order)
order by 1, 2