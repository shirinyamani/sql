-- INSERT
INSERT INTO accout (username, password, email, created_on)
VALUES
('Shirin','password', 'shirin@mail.com', CURRENT_TIMESTAMP)


-- UPDATE
UPDATE accout
SET  last_login = CURRENT_TIMESTAMP 
WHERE last_login IS null

UPDATE account_job
SET hire_date = accout.created_on
FROM accout
WHERE account_job.user_id = accout.user_id


-- DELETE
DELETE FROM account_job
WHERE user_id = 1

