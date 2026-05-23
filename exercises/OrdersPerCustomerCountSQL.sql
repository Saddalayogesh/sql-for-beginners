SELECT 
    first_name,
    last_name,
    COUNT(orders.id) AS order_count
FROM customers
JOIN orders
ON customers.id = orders.customer_id
GROUP BY customers.id, first_name, last_name
ORDER BY order_count DESC;