SELECT 
    first_name,
    last_name,
    city,
    country
FROM customers
INNER JOIN addresses
ON customers.id = addresses.customer_id
WHERE is_active = true
AND is_default = true
ORDER BY last_name ASC;