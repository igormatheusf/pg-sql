\c pratica-pg-sql

UPDATE customers
SET first_name = 'Igor', last_name = 'Matheus Fonseca', email = 'igor@mail.com'
-- WHERE id = 1
WHERE id BETWEEN 1 AND 5
RETURNING *
;