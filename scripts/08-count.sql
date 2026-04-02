\c pratica-pg-sql

-- INSERT INTO customers(first_name) VALUES('Igor');

-- SELECT COUNT(*) FROM customers;
-- SELECT COUNT(id) AS total_customers FROM customers;
-- SELECT COUNT(email) AS filled_emails FROM customers;
-- SELECT COUNT(DISTINCT email) AS filled_emails FROM customers; -- contagem de valores distintos

-- INSERT INTO orders (customer_id, amount) VALUES (2, 50);

-- Aggregate Functions (Funções de agregação)
SELECT
    customer_id,
    COUNT(id) AS total_orders,
    SUM(amount) AS total_revenue,
    MAX(amount) AS max_order,
    MIN(amount) AS min_order,
    ROUND(AVG(amount), 2) AS average_ticket
FROM orders
-- WHERE customer_id = 1
GROUP BY customer_id
HAVING COUNT(id) > 1 -- Filtrar em Aggregate Functions
ORDER BY average_ticket ASC
LIMIT 3;
