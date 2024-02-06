-- GENERAL CASE SYNTAX
--  CASE
--	WHEN condition1 THEN result1
-- WHEN condition2 THEN result2
-- ELSE

SELECT customer_id, 
CASE 
 WHEN (customer.customer_id) <= 100 THEN 'premium'
 WHEN (customer.customer_id BETWEEN 10 AND 100) THEN 'plus'
 ELSE 'normal'
END  AS customer_class
FROM customer;

SELECT 
SUM(CASE rental_rate
   WHEN 0.99 THEN 1
   ELSE 0
END) AS bargains,
SUM(CASE rental_rate
   WHEN 4.99 THEN 1
   ELSE 0
END)AS regular
FROM film;

-- challenge case
-- 1
SELECT 
SUM(CASE rating
   WHEN 'R' THEN 1
   ELSE 0
END) AS r,
SUM(CASE rating
   WHEN 'PG' THEN 1
   ELSE 0
END) AS pg,
SUM(CASE rating
   WHEN 'PG-13' THEN 1
   ELSE 0
END) AS pg13
FROM film;
