CREATE VIEW vw_payments AS 
SELECT 
    c.name AS customer_name,
    p.amount,
    p.status AS payment_status,
    p.payment_method
FROM 
    payments p
JOIN 
    orders o ON p.order_id = o.order_id
JOIN 
    customers c ON o.customer_id = c.customer_id
