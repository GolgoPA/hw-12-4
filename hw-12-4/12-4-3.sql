select t1.amount_of_payments, t1.month_of_payments
from (
  select SUM(p.amount) amount_of_payments, DATE_FORMAT(p.payment_date, '%M %Y') month_of_payments 
  from sakila.payment p 
  group by DATE_FORMAT(p.payment_date, '%M %Y')) t1
order by t1.amount_of_payments desc  
limit 1;
