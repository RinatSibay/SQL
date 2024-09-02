/*
Написал: Ибрагимов Ринат Динарович
Дата: 31.08.2024
Комментарий: Задание 2. Напишите ещё 2 варианта поиска фильмов с атрибутом “Behind the Scenes”,
 используя другие функции или операторы языка SQL для поиска значения в массиве..
*/

explain analyze
select 
film_id, 
title, 
special_features
from 
film 
where
special_features && array['Behind the Scenes']

explain analyze
select 
title, 
array_agg(unnest)
from (
	select title, unnest(special_features), film_id
	from film) t
where unnest = 'Behind the Scenes'
group by film_id, title