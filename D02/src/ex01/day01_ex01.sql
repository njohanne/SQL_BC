select name as object_name
from person
union all
select pizza_name as object_name
from menu
order by 1