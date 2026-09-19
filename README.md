# Olist SQL Analysis

## Overview

This project analyzes the **Olist E‑Commerce Dataset** using SQL to uncover insights into customer spending, revenue performance, product categories, and purchasing behavior. 
The dataset consists of multiple relational tables—including customers, geolocation, orders, order payments, order reviews, products, sellers and order items—spanning several years of transactional data. 

The analysis is structured around eight (8) key business questions, each answered with SQL queries that explore customer segmentation, monthly and month‑over‑month revenue trends, category‑level revenue drivers, top‑performing products, buyer purchase frequency and so. 
The queries are written for MySQL and leverage joins, aggregate functions, Common Table Expressions (CTEs), conditional logic, and window functions to efficiently process large datasets and generate actionable business insights.

---

## Business Questions

The analysis addresses eight (8) key business questions, each designed to uncover specific insights from the Olist dataset:

1. **Top 10 Customers by Spending**: Who are the top 10 customers by total amount spent?
   - Calculates total payment value per customer and ranks customers by spending.

2. **Monthly Revenue Trend**: What is the monthly revenue trend across the dataset?
   - Aggregates payment value by month based on the order purchase date.

3. **Month‑over‑Month Revenue Change**: What is the month-over-month change in revenue?
   - Compares each month's revenue with the previous month using the `LAG()` window function.

4. **Revenue by Product Categoryy**: Which product categories generate the most revenue?
   - Calculates total product revenue by category and ranks categories from highest to lowest.

5. **Top 3 Products per Category**: What are the top 3 products within each category by revenue?
   - Uses `ROW_NUMBER()` with `PARTITION BY` to rank products within their respective categories.

6. **Customer Spend Segmentation**: How can customers be segmented into Low, Medium, and High spend tiers?
   - Uses `NTILE(3)` to divide customers into three spending groups (Low, Medium, and High)

7. **Repeat vs. One‑Time Buyers**: How many customers are repeat vs. one-time buyers?
   - Counts orders per unique customer and classifies customers based on their purchase frequency.

8. **Revenue Concentration in Top Category**: What percentage of total revenue comes from the top category?
   - Identifies the highest-revenue category and calculates its contribution to total revenue.

---

## Key Findings

The queries are designed to identify the following insights:

- High value customers are few but critical (Q1 & Q6): The top 10 customers by spending contribute disproportionately to revenue. Segmentation into spend tiers shows that the “High” tier is small but generates the majority of sales. This means customer value is highly concentrated.
- Revenue is seasonal and fluctuates (Q2 & Q3): Monthly revenue trends reveal peaks and troughs, with noticeable month over month changes. This indicates seasonality in shopping behavior, suggesting that promotions and campaigns should align with high revenue months.
- Product categories drive concentration risk (Q4, Q5, Q8): A handful of categories dominate revenue, and the top category alone contributes a significant percentage of total revenue. Within categories, the top 3 products (heath & beauty, watches & gifts, bed, bath & table) account for most sales. This shows strong dependence on a narrow set of products and categories.
  
---

## Recommendations

Based on the types of insights produced by the analysis, the following business actions can be considered:
- **Strengthen Customer Retention & Segmentation :** High‑value customers are few but critical, and repeat buyers are rare yet disproportionately important. Olist should implement targeted retention campaigns—such as loyalty programs, personalized offers, and exclusive perks—focused on the High‑spend tier and repeat buyers. At the same time, promotions can be tailored by spend tier (Low, Medium, High) to maximize engagement across segments. This ensures that the most valuable customers are nurtured while encouraging one‑time buyers to return.
- **Diversify Product & Revenue Strategy :** Revenue is concentrated in a handful of categories, with Health & Beauty alone contributing over 9% of total sales. To reduce concentration risk, Olist should expand marketing and inventory support for mid‑tier categories while continuing to optimize top‑performing products within each category. Seasonal revenue peaks (e.g., November) should be leveraged with targeted campaigns, while monitoring month‑over‑month changes helps anticipate downturns. This dual **approach—diversification plus seasonal alignment**—creates stability and new growth opportunities.


---

## Tools & Skills

### Tools
- **MySQL**
- SQL development environment / MySQL client
- Olist e-commerce dataset

### SQL Skills Demonstrated

- `SELECT`, `WHERE`, `GROUP BY`, and `ORDER BY`
- `INNER JOIN`
- Aggregate functions such as `SUM()` and `COUNT()`
- `ROUND()` for numerical formatting
- `DATE_FORMAT()` for time-based analysis
- Common Table Expressions (`WITH`)
- Window functions:
  - `LAG()`
  - `ROW_NUMBER()`
  - `NTILE()`
  - `SUM() OVER()`
- `CASE` expressions for customer segmentation
- Ranking and partitioning
- Revenue calculations
- Customer-level aggregation
- Time-series analysis
- Percentage-of-total calculations

---

## Files

- `Query 1-8.sql` — Contains the eight SQL queries used for the Olist analysis.
- `README.md` — Project documentation, business questions, analytical approach, and recommendations.

### Query Structure

| Query | Analysis |
|---|---|
| Q1 | Top 10 customers by total spending |
| Q2 | Monthly revenue trend |
| Q3 | Month-over-month revenue change |
| Q4 | Revenue by product category |
| Q5 | Top 3 products by revenue within each category |
| Q6 | Customer spend-tier segmentation |
| Q7 | Repeat vs. one-time buyers |
| Q8 | Top category's percentage of total revenue |

---

## Dataset Tables Used

The queries work with the following Olist tables:

- `customers`
- `orders`
- `order_payments`
- `order_items`
- `products`

These tables are joined to connect customer information, orders, payments, and product-level revenue.

---

## Project Objective

The objective of this project is to demonstrate how SQL can be used to transform raw e-commerce transaction data into actionable business insights.

The analysis combines **customer analytics, revenue analysis, product performance, segmentation, and window-function techniques** to provide a structured view of Olist's e-commerce performance.
