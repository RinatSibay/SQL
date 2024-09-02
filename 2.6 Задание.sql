/*
Написал: Ибрагимов Ринат Динарович
Дата: 26.08.2024
Комментарий: Задание 6. Используя данные из таблицы rental о дате выдачи фильма в аренду (поле rental_date) и дате возврата (поле return_date), 
вычислите для каждого покупателя среднее количество дней, за которые он возвращает фильмы.
*/

select
r.customer_id as "ID покупателя",
round(avg(date_part('day', return_date - rental_date::date))::numeric, 2) as "среднее количество дней, за которые он возвращает фильмы"
from 
rental as r
group by 
r.customer_id
order by 
r.customer_id 
