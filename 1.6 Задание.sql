/*
Написал: Ибрагимов Ринат Динарович
Дата: 26.08.2024
Комментарий: Выведено одним запросом только активные покупатели, имена которых KELLY или WILLIE.
Все буквы в фамилии и имени из верхнего регистра должны быть переведены в нижний регистр. Данные взяты из таблицы customer*/
select 
lower(last_name || ' ' || first_name) as "ФИ", 
active as "Покупательская активность"
from
customer
where 
active = 1 and 
last_name like 'KELLY' or last_name like 'WILLIE' and
first_name like 'KELLY' or first_name like 'WILLIE'	 
