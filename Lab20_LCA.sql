USE sakila;

SELECT name, COUNT(film_id) 
FROM sakila.film_category fc
LEFT JOIN category c ON fc.category_id = c.category_id
GROUP BY name;

SELECT first_name, last_name, s.address_id, address 
FROM sakila.staff s
LEFT JOIN address a ON s.address_id = a.address_id;

SELECT s.staff_id, first_name, last_name, SUM(amount), MONTH(payment_date) AS month,YEAR(payment_date) AS year  
FROM sakila.payment p
LEFT JOIN sakila.staff s ON p.staff_id = s.staff_id
GROUP BY s.staff_id, first_name, MONTH(payment_date),YEAR(payment_date)
HAVING month = 8 AND year = 2005;

SELECT title, COUNT(actor_id)
FROM sakila.film f
LEFT JOIN sakila.film_actor a ON f.film_id = a.film_id
GROUP BY title;

SELECT first_name, last_name, SUM(amount)  
FROM sakila.payment p
LEFT JOIN sakila.customer c ON p.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY last_name;