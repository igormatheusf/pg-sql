\c pratica-pg-sql

-- para deletar tabela
DROP TABLE IF EXISTS customers;

-- criar tabela
-- CREATE TABLE IF NOT EXISTS customers (
--     id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
--     first_name VARCHAR(20),
--     last_name VARCHAR(50),
--     email VARCHAR(256),
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

CREATE TABLE IF NOT EXISTS customers (
    id SERIAL,
    first_name VARCHAR(20),
    last_name VARCHAR(50),
    email VARCHAR(256),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders(
    id SERIAL,
    customer_id INT,
    amount NUMERIC(7, 2)
);