-- Q3 What is the month-over-month change in revenue?
USE olist;
WITH Monthly AS (SELECT DATE_FORMAT(o.order_purchase_timestamp,'%Y-%m') AS Month,
                        ROUND(SUM(op.payment_value),2) AS Revenue
                  FROM order_payments op
                  JOIN orders o ON op.order_id = o.order_id
                  GROUP BY Month)
SELECT Month,
       Revenue,
       LAG(Revenue) OVER (ORDER BY Month) AS Prev_month_revenue,
       ROUND(Revenue - LAG(Revenue) OVER (ORDER BY Month),2) AS 'Change'
FROM Monthly
ORDER BY Month;