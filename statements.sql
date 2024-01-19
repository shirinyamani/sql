-- "WHERE" statement example
SELECT email FROM customer
WHERE first_name = 'Nancy';

SELECT description FROM film
WHERE title = 'Outlaw Hanky';

SELECT phone FROM address 
WHERE address ='259 Ipoh Drive';

-- if you quickly wanna see the table
SELECT * FROM payment LIMIT 1;

-- what are the first 10 customer ids that made payment?
SELECT customer_id FROM payment
ORDER BY payment_date ASC LIMIT 10;

-- what are the titles of the 5 shortest movies?
SELECT title,length FROM film ORDER BY
length limit 5;

-- 
SELECT COUNT(title) FROM film WHERE length <= 50;

-- Practice form "IN"
SELECT COUNT(*) FROM customer WHERE
first_name IN ('Shirin', 'Alex', 'John', 'Mike');

-- Practice for see "LIKE" n "ILIKE"/ %er% basically have "er" somewhere in their name
SELECT * FROM customer WHERE
last_name ILIKE '__ch%' AND 
first_name NOT ILIKE 'j%' ORDER BY first_name;

-- challenge end of chapter 2
-- How many transactions greater than 5?
SELECT COUNT(*) FROM payment WHERE 
amount >= 5;
-- How many actors startting letter P
SELECT COUNT(*) FROM actor WHERE
first_name ILIKE 'P%';

-- HOW MANY UNIQUE DISCRITS CUSTOMER FROM
SELECT COUNT(DISTINCT district) FROM address;

-- Name of those districts
SELECT DISTINCT(district) FROM address;

-- FILMS W/ RATING R AND REPLACEMNT BETWEEN 5 AND 15
SELECT COUNT(*) FROM film WHERE rating = 'R'
AND replacement_cost BETWEEN 5 AND 15;

-- number of films have 'truman' somewhere in title
SELECT COUNT(*) FROM film WHERE
title ILIKE '%truman%';