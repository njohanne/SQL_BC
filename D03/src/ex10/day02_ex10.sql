select distinct person_name1, person_name2, common_address 
from (select distinct person.name as person_name1, address, id as id1 from person) as exp1
left join (select person.name as person_name2, address as common_address, id as id2 from person) as exp2
on common_address=exp1.address
where id1>id2
order by 1, 2, 3