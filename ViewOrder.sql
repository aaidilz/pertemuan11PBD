CREATE VIEW vw_orders AS
SELECT c.name, o.status
FROM orders o 
JOIN customers c on o.customer_id = c.customer_id;

