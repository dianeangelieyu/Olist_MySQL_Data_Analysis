# Olist SQL Analysis

## Overview

This project analyzes the **Olist E-Commerce Dataset** using SQL to answer business questions related to customer spending, revenue performance, product categories, and customer purchasing behavior.

The analysis focuses on:
- Customer spending and segmentation
- Monthly revenue trends
- Month-over-month revenue changes
- Revenue by product category
- Top-performing products within each category
- Repeat vs. one-time customers
- Revenue concentration by the top product category

The SQL queries are written for **MySQL** and make use of joins, aggregate functions, Common Table Expressions (CTEs), conditional logic, and window functions.

---

## Business Questions

The analysis answers the following questions:

1. **Who are the top 10 customers by total amount spent?**
   - Calculates total payment value per customer and ranks customers by spending.

2. **What is the monthly revenue trend across the dataset?**
   - Aggregates payment value by month based on the order purchase date.

3. **What is the month-over-month change in revenue?**
   - Compares each month's revenue with the previous month using the `LAG()` window function.

4. **Which product categories generate the most revenue?**
   - Calculates total product revenue by category and ranks categories from highest to lowest.

5. **What are the top 3 products within each category by revenue?**
   - Uses `ROW_NUMBER()` with `PARTITION BY` to rank products within their respective categories.

6. **How can customers be segmented into Low, Medium, and High spend tiers?**
   - Uses `NTILE(3)` to divide customers into three spending groups.

7. **How many customers are repeat vs. one-time buyers?**
   - Counts orders per unique customer and classifies customers based on their purchase frequency.

8. **What percentage of total revenue comes from the top category?**
   - Identifies the highest-revenue category and calculates its contribution to total category revenue.

---

## Key Findings

The queries are designed to identify the following insights:

- The customers contributing the most to overall payment value.
- Monthly patterns and changes in revenue over the dataset period.
- Months with increases or decreases in revenue compared with the previous month.
- The product categories that contribute the largest amounts of revenue.
- The highest-revenue products within each category.
- Customer distribution across Low, Medium, and High spending tiers.
- The proportion of customers who make repeat purchases versus only one purchase.
- The degree to which total revenue is concentrated in the highest-performing product category.

> **Note:** Numerical findings should be populated after executing the queries against the Olist database. This README describes the analytical questions and methodology without assuming results that have not been executed.

---

## Recommendations

Based on the types of insights produced by the analysis, the following business actions can be considered:

- **Customer retention:** Use the repeat-buyer analysis to identify opportunities for increasing repeat purchases through retention campaigns and personalized offers.
- **Customer segmentation:** Use the Low/Medium/High spend tiers to tailor promotions, loyalty initiatives, and customer engagement strategies.
- **Revenue monitoring:** Track monthly revenue and month-over-month changes to identify periods of growth or decline and investigate the underlying drivers.
- **Category strategy:** Prioritize high-revenue categories while monitoring whether revenue is overly concentrated in a small number of categories.
- **Product optimization:** Use the top-product analysis within each category to identify products that may deserve greater promotional visibility or inventory attention.
- **Revenue diversification:** If one category represents a large share of total revenue, consider opportunities to develop other categories and reduce dependence on a single revenue source.

These recommendations should be refined after reviewing the actual query outputs and business context.

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
