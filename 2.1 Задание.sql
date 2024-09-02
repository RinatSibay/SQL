/*
Написал: Ибрагимов Ринат Динарович
Дата: 26.08.2024
Комментарий: Задание 1. Выведите для каждого покупателя его адрес, город и страну проживания.
*/
select 
c.last_name || ' ' || first_name as "ФИ", 
a.address,
ci.city,
co.country
from customer as c
LEFT OUTER join
address as a
on
c.address_id=a.address_id
LEFT OUTER join
city as ci
on
a.city_id =ci.city_id 
LEFT OUTER join
country as co
on
ci.country_id =co.country_id 
order by
c.last_name 

