\c pratica-pg-sql

-- INSERT INTO orders(customer_id, amount) VALUES(10, 199.95);
-- INSERT INTO orders(amount) VALUES(199.95);
-- DELETE FROM orders WHERE customer_id = 9;

SELECT 
    cus.*,
    no_empty_object_array(
        COUNT(ord.id),
        JSON_AGG(
            JSON_STRIP_NULLS(
                JSON_BUILD_OBJECT(
                    'id', ord.id,
                    'amount', ord.amount
                )
            )
        )
    ) AS orders
FROM customers AS cus
LEFT JOIN orders AS ord ON ord.customer_id = cus.id
WHERE cus.id = 10
GROUP BY cus.id
;
-- CROSS JOIN orders;

-- JOIN (INNER JOIN) -> é o INNER JOIN implícito. INNER JOIN precisa ter dados na tabela da direita, para retornar dados. (Primeira tabela é considerada a da esquerda)
-- LEFT JOIN não precisa necessariamente ter dados na tabela da direita, para retornar dados. 
-- RIGHT JOIN não precisa necessariamente ter dados na tabela da esquerda, para retornar dados.
-- FULL JOIN retorna dados das tabelas, mesmo que não hajam registros numa ou outra.
-- CROSS JOIN faz o cruzamento de dados entre todas as tabelas, não sendo necessário informar entre quais colunas tem o relacionamento.