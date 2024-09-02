/*
Написал: Ибрагимов Ринат Динарович
Дата: 31.08.2024
Комментарий: Задание 4. С помощью оконной функции для каждого покупателя выведите данные о его последней оплате аренды.
*/

select 
customer_id as "id покупателя",
payment_id as "id покупки", 
payment_date as "Дата оплаты ", 
last_value as "Поледняя оплата аренды"
from(
	select 
	customer_id,
	payment_id,
	payment_date,
		last_value(amount) over (partition by customer_id order by payment_date desc),
		row_number() over (partition by customer_id order by payment_date desc) 
	from 
	payment) p 
where 
row_number = 1