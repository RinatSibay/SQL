/*
Написал: Ибрагимов Ринат Динарович
Дата: 26.08.2024
Комментарий: Задание 1. С помощью SQL-запроса посчитайте для каждого магазина количество его покупателей.
•	Доработайте запрос и выведите только те магазины, у которых количество покупателей больше 300. Для решения используйте фильтрацию по сгруппированным строкам с функцией агрегации. 
•	Доработайте запрос, добавив в него информацию о городе магазина, фамилии и имени продавца, который работает в нём. 

*/

select
cu.store_id as "Магазины",
count(*) as "Количество покупателей",
c.city as "Город магазина",
sta.first_name || ' ' || sta.last_name as "Продавец"
from
customer as cu
LEFT OUTER join
store as sto
on
cu.store_id=sto.store_id
LEFT OUTER join
staff as sta
on
sto.store_id=sta.store_id
LEFT OUTER join
address as a
on
sta.address_id=a.address_id
LEFT OUTER join
city as c
on
a.city_id=c.city_id
group by cu.store_id, c.city, sta.first_name, sta.last_name
having count(cu.store_id) > 300
order by 
cu.store_id
asc 




