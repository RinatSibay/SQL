/*
Написал: Ибрагимов Ринат Динарович
Дата: 31.08.2024
Комментарий: Задание 2. С помощью оконной функции выведите для каждого покупателя стоимость платежа и стоимость платежа
 из предыдущей строки со значением по умолчанию 0.0 с сортировкой по дате.
*/
 select 
 customer_id,
 payment_date,
 amount,
 lag(p.amount,1,0.) over (partition by customer_id order by p.payment_date)
 from 
 payment p
 order by
 customer_id