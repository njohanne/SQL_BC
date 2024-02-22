select address, round(max(age) - cast(min(age) as dec(6, 2))/max(age), 2) formula, round(avg(age), 2) average, 'formula' > 'average' comparison
from person
group by 1
order by 1