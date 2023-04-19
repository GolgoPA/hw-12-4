select t1.cp count_of_payments, t1.staff_id staff_id,
  case 
  	when t1.cp > 8000 then 'Да'
  	else 'Нет'
  end as bonus
from (
  select COUNT(payment_id) cp, staff_id  
  from sakila.payment p 
  group by staff_id ) t1;