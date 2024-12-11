CREATE VIEW vw_order_details AS
SELECT 
    c.name AS customer_name,
    p.name AS product_name,
    od.quantity,
    od.unit_price
FROM 
    order_details od
JOIN 
    orders o ON od.order_id = o.order_id
JOIN 
    customers c ON o.customer_id = c.customer_id
JOIN 
    products p ON od.product_id = p.product_id;
