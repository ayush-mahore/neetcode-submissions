Select c.name
FROM customers c LEFT JOIN orders o on c.id = o.customer_id
WHERE o.id is null;

