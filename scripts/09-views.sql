\c pratica-pg-sql

DROP VIEW IF EXISTS customers_summary;
CREATE OR REPLACE VIEW customers_summary AS -- Para alterar VIEW basta incluir OR REPLACE, após CREATE
-- Aggregate Functions (Funções de agregação)
SELECT
    customer_id AS "customerId",
    COUNT(id)::INT AS "totalOrders",
    SUM(amount)::FLOAT AS "totalRevenue",
    MAX(amount)::FLOAT AS "maxOrder",
    MIN(amount)::FLOAT AS "minOrder",
    ROUND(AVG(amount), 2)::FLOAT AS "averageTicket"
FROM orders
GROUP BY customer_id
ORDER BY "totalOrders";

-- INSERT INTO orders(customer_id, amount) VALUES (4, 1000);

-- SELECT * FROM customers_summary WHERE customer_id = 4;

-- SELECT * FROM customers_summary
-- WHERE total_revenue BETWEEN 500 AND 1001
-- ORDER BY total_revenue DESC;

-- SELECT * FROM pg_views;
-- SELECT * FROM pg_views WHERE viewname = 'customers_summary';

-- -- Para renomear colunas, somente com o ALTER VIEW (ou melhor, dropar VIEW e recriá-la com nomes corretos das colunas)
-- ALTER VIEW customers_summary RENAME COLUMN total_orders TO "totalOrders";