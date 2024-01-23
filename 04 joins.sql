-- AS is used after select and BEFORE FRom and id happend to only take place when u crated n filtert so you cannot use if in where/having

-- INNER JOIN (the mutual circle) 
-- rows present in BOTH tables
SELECT first_name, last_name, payment.customer_id
FROM customer INNER JOIN payment ON
customer.customer_id = payment.customer_id;

-- LEFT/RIGHT OUTER JOIN
-- Rows presents in ONLY ONE of the tables OR THE MUTUAL AREA
SELECT customer.customer_id FROM customer
FULL OUTER JOIN payment ON customer.customer_id =
payment.customer_id WHERE customer.customer_id IS null
OR payment.customer_id IS null;

-- JOIN end of capter challenge
-- 1
SELECT * FROM address WHERE district ='California' LIMIT 5;

SELECT email FROM customer LEFT JOIN address ON
customer.address_id = address.address_id
WHERE district = 'California';

-- 2
SELECT actor.first_name, actor.last_name, film.title
FROM actor
INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
RIGHT JOIN film ON film_actor.film_id = film.film_id
WHERE actor.first_name = 'Nick' AND actor.last_name = 'Wahlberg';