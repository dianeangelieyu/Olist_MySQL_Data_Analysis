-- Q4 Which product categories generate the most revenue?
USE olist;
SELECT
       p.product_category_name AS Product_Category,
       ROUND(SUM(oi.price),2) AS Revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY Product_Category
ORDER BY Revenue DESC;