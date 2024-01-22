-- Assesment 1 ---
-- 1
SELECT customer_id, SUM(amount) FROM 
payment WHERE staff_id = 2 GROUP BY 
customer_id HAVING SUM(amount)>=110;

-- 2
SELECT COUNT(title) FROM film WHERE 
title ILIKE 'j%';

-- 3
SELECT first_name,last_name FROM customer 
WHERE first_name ILIKE 'E%'AND address_id <= 500
ORDER BY customer_id DESC LIMIT 1;
