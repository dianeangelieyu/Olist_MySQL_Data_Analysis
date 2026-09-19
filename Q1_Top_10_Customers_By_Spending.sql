-- Q1 Who are the top 10 customers by total amount spent?
USE olist;
SELECT c.customer_id,
       SUM(op.payment_value) AS total_spent
FROM customers c
JOIN orders o          ON c.customer_id = o.customer_id
JOIN order_payments op ON o.order_id = op.order_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 10;
