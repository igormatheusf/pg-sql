\c pratica-pg-sql

DELETE FROM customers
-- SELECT * FROM customers -- antes de rodar delete/update em massa, rode a query como SELECT antes, para testar a consulta e não fazer besteira
WHERE id = 18
RETURNING id, first_name AS "Primeiro Nome"
;

