create function fnc_fibonacci(pstop integer default 10) returns setof integer as $$
	with recursive fibonacci(a, b) as
	(
	select 1, 1
	union all
	select b, a+b from fibonacci where b<pstop
	)
select a from fibonacci;
$$ language sql;

-- select * from fnc_fibonacci(100);
-- select * from fnc_fibonacci();
