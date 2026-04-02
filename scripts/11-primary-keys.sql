\c pratica-pg-sql

-- ALTER TABLE customers ADD PRIMARY KEY(id);

-- INSERT INTO customers(id, email) VALUES(1, 'qualquer_coisa');

-- SELECT * FROM customers WHERE id = 1;

-- ALTER TABLE customers ADD UNIQUE(email);
-- ALTER TABLE customers ADD PRIMARY KEY(id);

-- ALTER TABLE customers DROP CONSTRAINT  customers_email_key1;

-- INSERT INTO customers (email) VALUES('igor@mail.com');
-- INSERT INTO customers (id, email) VALUES(1, 'teste@mail.com');
-- INSERT INTO customers (email) VALUES(null);
INSERT INTO customers (id, email) VALUES(null, 'teste2@mail.com');

-- -- para listar constraints existentes
-- SELECT constraint_name, constraint_type, table_name
-- FROM information_schema.table_constraints
-- WHERE table_schema = 'public';