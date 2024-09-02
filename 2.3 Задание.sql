/*
Написал: Ибрагимов Ринат Динарович
Дата: 26.08.2024
Комментарий: Задание 3. Выведите топ-5 покупателей, которые взяли в аренду за всё время наибольшее количество фильмов.
*/

select
c.last_name || ' ' || c.first_name as "ФИ",
count(r.rental_id) as "Количество фильмов"
from 
customer as c 
LEFT OUTER join
rental as r
on
r.customer_id = c.customer_id
group by c.customer_id
order by
count(rental_id)
desc
limit 5
