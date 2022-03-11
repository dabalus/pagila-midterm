/*
 * Count the number of distinct customers who have rented a movie that 'RUSSELL BACALL' has acted in.
 *
 * NOTE:
 * You cannot hard-code Russell Bacall's actor_id.
 * You're where clause must include a condition using the "first_name" and "last_name" fields of the "actor" table.
 */
 select count( distinct c.customer_id) Noofcustomers  from film f join film_actor fa on fa.film_id = f.film_id join actor a on a.actor_id = fa.actor_id join inventory i on i.film_id = f.film_id join rental r on r.inventory_id = i.inventory_id join customer c on c.customer_id = r.customer_id where concat(a.first_name, ' ',a.last_name) ='RUSSELL BACALL';



select title, count( distinct c.customer_id) Noofcustomers  from film f join film_actor fa on fa.film_id = f.film_id join actor a on a.actor_id = fa.actor_id join inventory i on i.film_id = f.film_id join rental r on r.inventory_id = i.inventory_id join customer c on c.customer_id = r.customer_id where concat(a.first_name, ' ',a.last_name) ='RUSSELL BACALL' group by title;
