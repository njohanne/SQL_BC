select name, rating from pizzeria
where rating>=3.5 and rating<=5
order by 2 desc;

select name, rating from pizzeria
where rating between 3.5 and 5
order by 2 desc