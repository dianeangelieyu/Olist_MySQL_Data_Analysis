-- Q8 What % of total revenue comes from the top category?
USE olist;
WITH Revenue_Category AS (SELECT p.product_category_name AS Category,
                                 ROUND(SUM(oi.price),2) AS Revenue
                         FROM products p
                         JOIN order_items oi ON p.product_id = oi.product_id
                         GROUP BY Category)
SELECT Category,
       Revenue,
       SUM(Revenue)OVER () AS Total_Revenue,
       ROUND(Revenue/SUM(Revenue) OVER () * 100,2) AS '%of_total'
FROM Revenue_Category
ORDER BY Revenue DESC
LIMIT 1