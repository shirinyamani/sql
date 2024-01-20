-- Aggregate functions:take multiple inputs n return 1 output like avrg, count, min/max, sum
SELECT MIN(replacement_cost) FROM film;

-- Avrge of replacement_cost
SELECT ROUND(AVG(replacement_cost),2) FROM film;

-- GROUP BY aggregate columnS per some category
-- NOTE: in Select statement, the cols must either have some sort of agg function (sum, min/max) or appear in groupby clause
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id ORDER BY SUM(amount) DESC;

-- SELECT COUNT(customer_id) FROM payment WHERE customer_id = 1;

-- GROUP BY CHALLENGE
SELECT * FROM payment LIMIT 10;

--1
SELECT staff_id, COUNT(amount) FROM payment
GROUP BY staff_id ORDER BY COUNT(amount) DESC;

--2
SELECT * FROM film LIMIT 5;

SELECT rating, ROUND(AVG(replacement_cost),2) FROM film 
GROUP BY rating ORDER BY ROUND(AVG(replacement_cost),2) DESC ;

-- 3
SELECT * FROM payment LIMIT 10;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id ORDER BY SUM(amount) DESC LIMIT 5;

-- HAVING: take place to filter data AFTER an aggregation/GROUP BY
-- HAVING CHALLENGE 

-- 1
SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id HAVING COUNT(amount) >=40 ORDER BY COUNT(amount) DESC;

-- 2
SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id = 2 GROUP BY customer_id 
HAVING SUM(amount) > 100;