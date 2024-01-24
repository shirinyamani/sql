SHOW TIMEZONE;

SELECT NOW();

SELECT TIMEOFDAY();

SELECT CURRENT_DATE;

-- EXTRACT to extract information (y/m/day/week)from a col of a table 
SELECT EXTRACT(YEAR FROM payment_date) AS year FROM payment LIMIT 10;
-- Age 
SELECT AGE(payment_date) FROM payment;

-- TO_CHAR(DATE_COL, 'MM-DD-YYYY') change from one type to str
SELECT TO_CHAR(payment_date, 'mon/dd/YYYY') FROM payment;


--TIMESTAMP CHALLENGE
--1
SELECT DISTINCT(TO_CHAR(payment_date,'Month')) FROM payment;

--2
SELECT COUNT(*) 
FROM payment 
WHERE EXTRACT(dow FROM payment_date) = 1;


--Math Functions
SELECT LENGTH(first_name) FROM customer;

-- concat 
SELECT UPPER(first_name) || ' ' || last_name AS 
first_and_last_name FROM 
customer LIMIT 10;

-- Email add first letters
SELECT UPPER(LEFT(first_name, 2)) || last_name || '@gmail.com'
AS customer_gmails
FROM customer;

--Sub-query, the one inside the pranthess is gona run first
-- the sub-quesry returning one output so > < is fine
-- but if its returning more than one the use IN
SELECT title, rental_rate FROM 
film
WHERE rental_rate > 
(SELECT AVG(rental_rate) FROM film);


SELECT film.title FROM film
WHERE film_id IN
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory ON inventory.inventory_id = 
rental.inventory_id
WHERE return_date BETWEEN '2005-05-29'
AND '2005-05-30')
ORDER BY film_id;


-- EXITS check if rows exists in the subquery
SELECT first_name, last_name
FROM customer AS c
WHERE EXISTS
(SELECT * FROM payment AS p
 WHERE p.customer_id = c.customer_id
 AND amount >11
);

-- self join
SELECT f1.title, f2.title, f1.length
FROM film AS f1
INNER JOIN film AS f2 ON 
f1.film_id != f2.film_id
WHERE f1.length = f2.length;
