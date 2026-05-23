-- Write a SQL query below --
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    email,
    city
FROM customers, addresses
WHERE customers.id = addresses.customer_id
AND is_active = true
AND is_default = true
ORDER BY first_name;