SELECT c.customer_id, c.customer_name
FROM customers c
WHERE EXISTS (
    SELECT 1 from orders o where o.customer_id = c.customer_id AND o.product_name = 'A'
)
AND EXISTS (
    SELECT 1 from orders o where o.customer_id = c.customer_id AND o.product_name = 'B'
)
AND NOT EXISTS (
    SELECT 1 from orders o where o.customer_id = c.customer_id AND o.product_name = 'C'
)
order by c.customer_name;