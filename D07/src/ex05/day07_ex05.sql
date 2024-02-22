select distinct name from person
inner join person_order on person_order.person_id = person.id
order by 1