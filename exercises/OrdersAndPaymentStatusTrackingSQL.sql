SELECT 
    orders.id AS order_id,
    customers.email,
    ROUND(orders.total_amount, 2) AS total_amount,
    payments.payment_method
FROM orders
JOIN customers
ON orders.customer_id = customers.id
JOIN payments
ON orders.id = payments.order_id
WHERE orders.ordered_at BETWEEN '2023-10-01' AND '2023-10-31'
ORDER BY order_id ASC;