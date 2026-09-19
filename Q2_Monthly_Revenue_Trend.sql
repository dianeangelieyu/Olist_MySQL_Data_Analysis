
-- Q2 What is the monthly revenue trend across the dataset?
USE olist;
SELECT
        DATE_FORMAT(o.order_purchase_timestamp,'%Y-%m') AS month,
        ROUND(SUM(op.payment_value),2) AS Total_Revenue
FROM order_payments op
JOIN orders o ON op.order_id = o.order_id
GROUP BY month
ORDER BY month;