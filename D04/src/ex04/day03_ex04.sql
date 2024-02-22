with exp as (select pizzeria.name as name, person.gender as gender from person_order
			join menu on menu_id=menu.id
			join person on person_id=person.id
			join pizzeria on menu.pizzeria_id=pizzeria.id)
select distinct name as pizzeria_name from exp
where gender ='male' and name not in (select name from exp where gender='female')
union all select distinct name from exp where gender='female' and name not in (select name from exp where gender='male')
order by 1