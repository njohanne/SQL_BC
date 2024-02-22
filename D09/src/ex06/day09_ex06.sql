create function fnc_person_visits_and_eats_on_date(
	pperson varchar default 'Dmitriy',
	pprice integer default 500,
	pdate date default '2022-01-08')
returns table (name varchar) as $$
        SELECT DISTINCT pz.name FROM person as p
        JOIN person_visits pv on p.id = pv.person_id
        JOIN pizzeria pz on pz.id = pv.pizzeria_id
        JOIN person_order po on (p.id = po.person_id and pv.visit_date=po.order_date)
        JOIN menu m on m.id = po.menu_id
where p.name=pperson and m.price<pprice and pv.visit_date=pdate;
$$
language plpgsql;

-- create function fnc_person_visits_and_eats_on_date(
-- 	pperson varchar default 'Dmitriy',
-- 	pprice integer default 500,
-- 	pdate date default '2022-01-08')
-- returns table (name varchar) as $$
--         SELECT pz.name FROM person as p
--         JOIN person_visits pv on p.id = pv.person_id
--         JOIN pizzeria pz on pz.id = pv.pizzeria_id
--         JOIN person_order po on (p.id = po.person_id and pv.visit_date=po.order_date)
--         JOIN menu m on m.id = po.menu_id
-- where p.name=pperson and m.price<pprice and pv.visit_date=pdate;
-- $$
-- language sql;

-- select *
-- from fnc_person_visits_and_eats_on_date(pprice := 800);

-- select *
-- from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');
