select dates_table.dates::date
from (select generate_series('2022-01-01'::timestamp,
                             '2022-01-10', '1 day') as dates) as dates_table
left join (select visit_date from person_visits where person_id=1 or person_id=2) as v_d
on dates_table.dates=v_d.visit_date
where visit_date is NULL