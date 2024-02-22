with exp (m_d) as (select gs::date as v_d from generate_series('2022-01-01', '2022-01-10','1 day'::interval) as gs)
select m_d from exp
left join (select visit_date from person_visits where (person_id=1 or person_id=2)) as exp2 on exp2.visit_date=m_d
where visit_date is NULL
order by 1