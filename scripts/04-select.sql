\c pratica-pg-sql

-- SELECT id, first_name AS "Primeiro Nome", last_name AS "Ultimo Nome", email
-- FROM customers;

-- SELECT * FROM customers
-- ORDER BY id ASC
-- OFFSET 0 -- a partir de qual registro retornará na consulta
-- LIMIT 10;

SELECT * FROM customers
ORDER BY id
-- WHERE id = 10
-- WHERE id != 10
-- WHERE id > 10 AND last_name = 'Doe 19'
-- WHERE id >= 10 OR last_name = 'Doe 1'
-- WHERE (id >= 10 OR last_name = 'Doe 1') AND last_name = 'Doe 19'
-- WHERE id IN(1, 2, 3)
-- WHERE id NOT IN(1, 2, 3)
-- WHERE last_name IN('Doe 4', 'Doe 5')
-- WHERE id BETWEEN 1 AND 10
-- WHERE created_at BETWEEN '2026-02-11 00:00:00' AND '2026-02-11 23:59:59'
-- WHERE email IS NULL

-- WHERE first_name LIKE '%cust%' -- full text search (case sensitive)

-- WHERE first_name ILIKE '%cust%' -- full text search (case insensitive)
;