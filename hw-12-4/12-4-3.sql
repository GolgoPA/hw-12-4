select t1.amount_of_payments, t1.month_of_payments
from (
  select SUM(p.amount) amount_of_payments, MONTH(p.payment_date) month_of_payments
  from sakila.payment p 
  group by month(p.payment_date)) t1
order by t1.amount_of_payments desc  
limit 1;