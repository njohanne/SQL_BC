with female as (select pizzeria.name from pizzeria
			  join person_visits as visits on pizzeria.id=visits.pizzeria_id
			 join person on person.id=visits.person_id
			 where gender='female'),
	male as (select pizzeria.name from pizzeria
			 join person_visits as visits on pizzeria.id=visits.pizzeria_id
			 join person on person.id=visits.person_id
			 where gender='male'),
	female_only as (select name from female
				   except all select name from male),
	male_only as (select name from male
				   except all select name from female)
select name as pizzeria_name from female_only
union all select name from male_only
order by 1