select person.name, menu.pizza_name, menu.price, (menu.price/100*(100-person_discounts.discount)) as discount_price, pizzeria.name
from person_discounts
join person on person.id=fk_person_discounts_person_id
join menu on menu.pizzeria_id=fk_person_discounts_pizzeria_id
join pizzeria on pizzeria.id=pizzeria_id
order by 1,2