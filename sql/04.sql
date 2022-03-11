/*
 * You love the acting in the movie 'AMERICAN CIRCUS' and want to watch similar movies.
 * You've already watched all other movies with the same actors,
 * so now you need a new strategy for finding similar movies.
 * You decide that two movies X and Y are similar if they have been rented by the same customer,
 * and you further quantify this similarity by defining the "similarity score" to be the number of distinct customers that have rented both X and Y.
 *
 * Write a SQL SELECT query that:
 * computes the "similarity score" for all movies with 'AMERICAN CIRCUS'
 * and orders the results from highest to lowest.
 *
 * NOTE:
 * Your results should not contain any duplicate titles.
 *
 * NOTE:
 * You do not have to include movies with similarity score 0 in your results (but you may if you like).
 */
select title,count(distinct rental.customer_id) "Similarity Score" from film join inventory on inventory.film_id = film.film_id join rental on rental.inventory_id = inventory.inventory_id  join (select customer_id from rental join inventory on rental.inventory_id = inventory.inventory_id join film on film.film_id = inventory.film_id where title = 'AMERICAN CIRCUS') T on T.customer_id = rental.customer_id   group by  title  order by count(distinct rental.customer_id)  desc;
