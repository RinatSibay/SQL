/*
Написал: Ибрагимов Ринат Динарович
Дата: 31.08.2024
Комментарий: Задание 1. Напишите SQL-запрос, который выводит всю информацию о фильмах со специальным атрибутом (поле special_features)
 равным “Behind the Scenes”.
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