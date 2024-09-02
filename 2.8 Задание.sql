/*
Написал: Ибрагимов Ринат Динарович
Дата: 26.08.2024
Комментарий: Задание 8. Доработайте запрос из предыдущего задания и выведите с помощью него фильмы,
которые ни разу не брали в аренду.
*/
select
f.title,
count(r.customer_id) as "Сколько раз брали в аренду",
sum(p.amount) as "Общая стоимость аренды фильма"
from film as f
LEFT OUTER join
inventory as i
on
f.film_id=i.film_id 
LEFT OUTER join
rental as r
on
i.inventory_id=r.inventory_id 
LEFT OUTER join
payment as p
on
r.rental_id=p.rental_id 
where
r.customer_id is null
group by 
f.title
order by 
"Сколько раз брали в аренду"
asc 