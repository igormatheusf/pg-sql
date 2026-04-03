\c pratica-pg-sql

-- -- Realiza o Seq Scan (Sequential Scan)
-- EXPLAIN ANALYZE VERBOSE SELECT * FROM customers WHERE first_name = 'Customer-10';

-- -- Realiza o Index Scan
-- EXPLAIN ANALYZE VERBOSE SELECT * FROM customers WHERE id = 10;

-- EXPLAIN ANALYZE VERBOSE SELECT * FROM customers WHERE email = 'customer.10@example.com' AND first_name = 'Customer-10';


-- -- Imporante criar índices em colunas-chave onde terão necessidade de realizar muitas queries por elas, pois queries por colunas com índices são mais eficientes (é feito idex scan ao invés de sequential scan). Atenção para não criar índices desnecesários pois a cada novo índice duplica-se registros
-- CREATE INDEX IF NOT EXISTS customers_first_name_idx ON customers(first_name); -- pode ser simples (uma coluna) ou composta (duas colunas)

-- SELECT * FROM pg_indexes WHERE tablename = 'customers';

-- -- consulta para retornar o tamanho de uma table
SELECT pg_total_relation_size('customers');