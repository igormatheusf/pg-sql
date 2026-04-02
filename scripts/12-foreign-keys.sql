\c pratica-pg-sql

-- ALTER TABLE orders ADD FOREIGN KEY(customer_id) REFERENCES customers(id);

-- ALTER TABLE orders ALTER COLUMN customer_id SET DEFAULT 20;

-- ALTER TABLE orders DROP CONSTRAINT orders_fkey;
-- ALTER TABLE orders
-- ADD CONSTRAINT orders_fkey FOREIGN KEY(customer_id) REFERENCES customers(id)
-- ON UPDATE CASCADE -- RESTRICT é o valor padrão, no on update e on delete, e tem o mesmo do NO ACTION. Ambos não realizam nenhuma ação fora do padrão das constraints. Já o CASCADE surge o efeito cascata da operação realizada, em suas tabelas relacionadas. Também é possível setar como SET NULL dados das tabelas relacionadas a chave
-- ON DELETE SET DEFAULT; -- seta para o valor default definido na tabela

-- INSERT INTO orders (customer_id, amount) VALUES (121654, 1000);

-- UPDATE customers SET id = 9999 WHERE id = 5;
DELETE FROM customers WHERE id = 6;
SELECT * FROM orders WHERE id = 6;

-- -- Definindo FK ao criar a table
-- DROP TABLE IF EXISTS teste;
-- CREATE TABLE teste (
--     customer_id INT REFERENCES customers(id)
-- );

-- ALTER TABLE orders DROP CONSTRAINT orders_customer_id_fkey;

-- -- para listar constraints existentes
-- SELECT constraint_name, constraint_type, table_name
-- FROM information_schema.table_constraints
-- WHERE table_schema = 'public';