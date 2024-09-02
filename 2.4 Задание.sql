/*
Написал: Ибрагимов Ринат Динарович
Дата: 26.08.2024
Комментарий: Задание 4. Посчитайте для каждого покупателя 4 аналитических показателя:
•	количество взятых в аренду фильмов;
•	общую стоимость платежей за аренду всех фильмов (значение округлите до целого числа);
•	минимальное значение платежа за аренду фильма;
•	максимальное значение платежа за аренду фильма.
*/

select
c.last_name || ' ' || c.first_name as "ФИ",
count(r.rental_id) as "Количество фильмов",
round(sum(p.amount)) as "Общая стоимость платежей",
min(p.amount) as "Минимальное значение платежа",
max(p.amount) as "Максимальное значение платежа"
from 
customer as c 
LEFT OUTER join
rental as r 
on
r.customer_id = c.customer_id
LEFT OUTER join
payment as p
on
r.customer_id =  p.customer_id
and
p.rental_id = r.rental_id 
group by c.customer_id
