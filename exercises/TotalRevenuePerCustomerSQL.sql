SELECT 
    first_name,
    last_name,
    ROUND(SUM(total_amount), 2) AS total_revenue
FROM customers
JOIN orders
ON customers.id = orders.customer_id
GROUP BY first_name, last_name
ORDER BY total_revenue DESC;