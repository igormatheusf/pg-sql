\c pratica-pg-sql

-- INSERT INTO customers
-- VALUES(DEFAULT, 'Igor', 'Fonseca', DEFAULT, 'igorm.fonseca@hotmail.com');

-- INSERT INTO customers(email, first_name, last_name)
-- VALUES('jaque@mail.com', 'Jaqueline', 'Oliveira');

-- INSERT INTO customers(email, first_name, last_name)
-- VALUES
--    ('jose@mail.com', 'Jose', 'Ivan'),
--    ('marcos@mail.com', 'Marcos', 'Almeida'),
--    ('luana@mail.com', 'Luana', 'Batista'),
--    ('fernando@mail.com', 'Fernando', 'Antonio')
-- RETURNING id, first_name AS "Primeiro Nome";

-- INSERT INTO customers(email, first_name, last_name)
-- VALUES ('jose@mail.com', 'fssdfsdfsdfsdfsdfsddssdf', 'Ivan');

DO $$
DECLARE
    i INT := 1;
    customer_id INT;
    created_customers INT := 0;
BEGIN
    WHILE i <= 20 LOOP
        INSERT INTO customers(first_name, last_name, email)
        VALUES('Customer ' || i, 'Doe ' || i, 'customer.' || i || '@email.com')
        RETURNING id INTO customer_id;

        INSERT INTO orders(amount, customer_id)
        VALUES(RANDOM() * 1000, customer_id);

        i := i + 1;
        created_customers := created_customers + 1;
    END LOOP;

    RAISE NOTICE '% customers succesfully created', created_customers;
END $$;