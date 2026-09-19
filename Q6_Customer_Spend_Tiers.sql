-- Q6 Segment customers into spend tiers (Low/Medium/High).
USE olist;
WITH customer_spend  AS (SELECT o.customer_id,
                                ROUND(SUM(op.payment_value),2) AS Total_spent
                        FROM orders o
                        JOIN order_payments op ON o.order_id = op.order_id
                        GROUP BY o.customer_id)
SELECT  customer_id,
        Total_spent,
        CASE NTILE(3) OVER (ORDER BY Total_spent DESC)
            WHEN 1 THEN 'High'
            WHEN 2 THEN 'Medium'
            WHEN 3 THEN 'Low'
            END AS Spend_tier
FROM customer_spend
ORDER BY Spend_tier, Total_spent DESC;