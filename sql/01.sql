/*
 * You want to watch a movie tonight.
 * But you're superstitious,
 * and don't want anything to do with the letter 'F'.
 * List the titles of all movies that:
 * 1) do not have the letter 'F' in their title,
 * 2) have no actors with the letter 'F' in their names (first or last),
 * 3) have never been rented by a customer with the letter 'F' in their names (first or last).
 *
 * NOTE:
 * Your results should not contain any duplicate titles.
 */
 select distinct title  from film f join film_actor fa on fa.film_id = f.film_id join actor a on a.actor_id = fa.actor_id join inventory i on i.film_id = f.film_id join rental r on r.inventory_id = i.inventory_id join customer c on c.customer_id = r.customer_id where title  not like '%F%' and concat(a.first_name,a.last_name) NOT LIKE '%F%' and concat(c.first_name,c.last_name) not like '%F%' order by title;
