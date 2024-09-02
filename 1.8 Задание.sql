/*
Написал: Ибрагимов Ринат Динарович
Дата: 26.08.2024
Комментарий: Получаем информацию о трёх фильмах с самым длинным описанием фильма.
*/
select 
title as "Название фильма",
description as "Описание фильма",
length (description) as "длина описания",
release_year as "Дата выпуска фильма",
rating as "Рейтинг фильма",
replacement_cost as "Цена аренды фильма"
from
film
where 
rating = 'R' and replacement_cost between '0.00' and '3.00' or
rating = 'PG-13' and replacement_cost >= '4.00'
order by 
"длина описания" 
desc
limit 3
