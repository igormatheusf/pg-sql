\c pratica-pg-sql

-- Realiza o Seq Scan (Sequential Scan)
-- EXPLAIN ANALYZE VERBOSE SELECT * FROM customers WHERE first_name = 'Customer-10';

-- Realiza o Index Scan
EXPLAIN ANALYZE VERBOSE SELECT * FROM customers WHERE id = 10;