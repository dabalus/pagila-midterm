/*
 * List the titles of all films in the 'Children' category that have a rating of 'R' or 'NC-17'.
 *
 * NOTE:
 * Your results should not contain any duplicate titles.
 */
 select distinct title from film join film_category on film.film_id = film_category.film_id join category on category.category_id = film_category.category_id where category.name = 'Children' and rating IN ('R','NC-17');
