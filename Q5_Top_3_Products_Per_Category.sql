-- Q5 Rank top 3 products within each category by revenue.
USE olist;
WITH Ranked_product AS (SELECT p.product_id,
                               p.product_category_name,
                               ROUND(SUM(oi.price),2) as Revenue,
                               ROW_NUMBER() OVER (PARTITION BY p.product_category_name
							   ORDER BY SUM(oi.price) DESC) AS rn
                        FROM order_items oi
                        JOIN products p ON oi.product_id = p.product_id
                        GROUP BY p.product_category_name, p.product_id)
SELECT
    product_category_name AS Category,
    product_id AS 'Product ID',
    Revenue,
    rn AS ProductRankbyRevenue
FROM Ranked_product
WHERE rn <= 3
ORDER BY Category, Revenue DESC;
