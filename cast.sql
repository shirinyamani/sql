-- cast
-- general syntax:
-- CAST ( expression AS data_type )
SELECT CAST('5' AS INTEGER);


-- LEN DIGITS IN RENTAL
SELECT CHAR_LENGTH
(
CAST(inventory_id AS VARCHAR)
) FROM rental;