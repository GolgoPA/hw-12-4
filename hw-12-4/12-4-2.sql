select COUNT(f.title)
from film f  
where f.`length`  >
  (select AVG(`length`) 
  from film);