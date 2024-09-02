/*
Написал: Ибрагимов Ринат Динарович
Дата: 31.08.2024
Комментарий: Задание 3. С помощью оконной функции определите, на сколько каждый следующий платеж
 покупателя больше или меньше текущего.
*/
select
customer_id as "ID покупателя",
payment_id as "ID оплаты", 
payment_date as "дата покупки",
amount as "цена",
amount - lead(p.amount,1,0.) over (partition by customer_id  order by p.payment_date, customer_id) as "> или <"
from 
payment as p