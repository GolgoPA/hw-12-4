select f.title  from sakila.rental r
right join sakila.inventory i on i.inventory_id = r.inventory_id  
right join sakila.film f  on f.film_id = i.film_id 
where  r.rental_id is null;
