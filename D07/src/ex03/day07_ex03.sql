with visits_orders as (
	(
		select pz.name, count(*) count, 'order' action_type
		from pizzeria pz
		inner join menu m on m.pizzeria_id = pz.id
		inner join person_order po on po.menu_id = m.id
		group by 1
		order by 2 desc
		)
	union (
		select pz.name, count(*) count, 'visit' action_type
		from pizzeria pz
		inner join person_visits pv on pv.pizzeria_id = pz.id
		group by 1
		order by 2 desc
		)
	order by 3, 2 desc)

select name, sum(count) total_count from visits_orders
group by name
order by 2 DESC