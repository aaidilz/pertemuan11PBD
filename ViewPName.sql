CREATE VIEW vw_product_name AS 
SELECT 
    p.name AS product_name,
    od.quantity,
    od.unit_price,
    (od.quantity * od.unit_price) AS total_price
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
JOIN 
    order_details od ON o.order_id = od.order_id
JOIN 
    products p ON od.product_id = p.product_id;