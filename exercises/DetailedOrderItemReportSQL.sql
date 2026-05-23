SELECT 
    order_id,
    name AS product_name,
    quantity,
    ROUND(order_items.price, 2) AS price
FROM order_items
JOIN products
ON order_items.product_id = products.id
WHERE quantity > 1
ORDER BY order_id ASC;