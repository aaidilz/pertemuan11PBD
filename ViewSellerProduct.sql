create view vw_seller_product_and_category_product as
	SELECT 
    s.name AS seller_name,
    p.name AS product_name,
    c.name AS category_name
FROM 
    sellers s
JOIN 
    products p ON s.seller_id = p.seller_id
JOIN
	categories c ON p.category_id = c.category_id;