SELECT 
    email,
    product_id
FROM customers
JOIN carts
ON customers.id = carts.customer_id
JOIN cart_items
ON carts.id = cart_items.cart_id
WHERE is_active = true
ORDER BY email ASC;