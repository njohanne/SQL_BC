update menu
set price = round(((price/100)*90),0)
where pizza_name = 'greek pizza'