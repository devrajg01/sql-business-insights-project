-- Project: SQL Business Insights Project
-- File: queries.sql
-- Name: Devraj Gadhavi
-- Objective: Answer business questions using SQL








SHOW TABLES;
SELECT *
FROM orders;

SELECT *
FROM customers;

SELECT *
FROM products;

-- BUSINESS ANALYSIS QUERIES
-- A. SALES PERFORMANCE ANALYSIS
-- Business Question: Which products generate the highest revenue?

SELECT 
p.product_name,
sum(o.sales) AS total_sales
FROM products p 
JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC;
-- LIMIT 1;
-- Insight: Technology products such as Laptop and Phone generate the highest revenue.


-- Business Question: Which regions contribute the highest sales?

SELECT 
 c.region,
 sum(o.sales) as total_sales
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.region
ORDER BY total_sales DESC;
-- Insight: West region contributes the maximum sales.

-- B. CUSTOMER ANALYSIS
-- Business Question: Who are the top 3 customers by revenue?

SELECT 
  c.customer_name,
  sum(o.sales) AS total_sales
FROM customers c
JOIN orders o
  ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_sales DESC
LIMIT 3;

-- Insight: A small number of customers generate a large share of revenue
-- Business Question: Which customers placed more than one order?

SELECT 
    customer_name,
    COUNT(order_id) AS order_count
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY customer_name
HAVING COUNT(order_id) > 1;

-- Insight: Amit has placed more than one order 
-- C. TIME-BASED ANALYSIS
-- Business Question: What is the monthly sales trend?
SELECT 
    MONTHNAME(order_date) AS month,
    SUM(sales) AS total_sales
FROM orders
GROUP BY MONTHNAME(order_date),
month(order_date)
ORDER BY month(order_date);

-- Insight:Sales show an upward trend across the quarter, with a sharp dip in February followed by a strong recovery and peak in March.

-- D. PROFITABILITY ANALYSIS
-- Business Question: Which product categories are most profitable?

SELECT 
    p.category,
    sum(o.profit) as total_profit
FROM orders o
JOIN products p
    ON p.product_id = o.product_id
GROUP BY p.category
ORDER BY total_profit DESC
LIMIT 1 ;
-- Insight: Technology category delivers the highest profit margin.

-- Business Question: Classify orders based on profitability
-- ============================================
-- Business Question: Classify orders based on profitability
-- ============================================
SELECT 
    order_id,
    sales,
    profit,
    CASE
        WHEN profit >= 10000 THEN 'High Profit'
        WHEN profit BETWEEN 5000 AND 9999 THEN 'Medium Profit'
        ELSE 'Low Profit'
    END AS profit_category
FROM

 orders;

-- Insight: High-profit orders can be prioritized for future promotions.