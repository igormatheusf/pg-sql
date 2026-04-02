\c pratica-pg-sql

-- Constraint: restrição


-- INSERT INTO customers(first_name) VALUES('Aninha');
-- INSERT INTO customers(first_name, email) VALUES('Ze', 'zedamangatop@mail.com');
-- INSERT INTO customers(first_name, email) VALUES('Ze da manga', 'ze@mail.com');

-- UPDATE customers SET email = 'zedamangatop@mail.com' WHERE id = 21;

-- SELECT * FROM orders ORDER BY id DESC;

-- ALTER TABLE customers ALTER COLUMN email SET NOT NULL;
-- ALTER TABLE customers ADD CONSTRAINT customers_email_unique UNIQUE(email);
-- ALTER TABLE customers ADD UNIQUE(email);

-- -- para adicionar constraint UNIQUE composta
-- ALTER TABLE customers ADD UNIQUE(first_name, id);

-- -- para deletar constraints
-- ALTER TABLE customers DROP CONSTRAINT customers_first_name_email_key;

-- Contraint CHECK é utilizada para validar, se dado que está sendo inserido atende ao critério definido
-- ALTER TABLE orders ADD CHECK(amount >= 0);

-- INSERT INTO orders(customer_id, amount) VALUES(10, 20);

-- para listar constraints existentes
SELECT constraint_name, constraint_type, table_name
FROM information_schema.table_constraints
WHERE table_schema = 'public';