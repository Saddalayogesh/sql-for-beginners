SELECT 
    products.name AS product_name,
    categories.name AS category_name,
    COALESCE(SUM(order_items.quantity), 0) AS total_sold
FROM products
LEFT JOIN categories
ON products.category_id = categories.id
LEFT JOIN order_items
ON products.id = order_items.product_id
GROUP BY products.id, products.name, categories.name
ORDER BY total_sold DESC, product_name ASC;