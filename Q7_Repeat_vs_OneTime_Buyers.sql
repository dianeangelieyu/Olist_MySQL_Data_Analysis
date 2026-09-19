-- Q7 How many customers are repeat vs one-time buyers?
USE olist;
WITH customer_orders AS (SELECT c.customer_unique_id,
                                COUNT(o.order_id) AS order_count
                        FROM customers c
                        JOIN orders o on c.customer_id = o.customer_id
                        GROUP BY c.customer_unique_id)
SELECT
    CASE WHEN order_count = 1 THEN 'One-time'
         ELSE 'Repeat'
         END AS buyer_type,
    COUNT(*) AS customer_count
FROM customer_orders
GROUP BY buyer_type;