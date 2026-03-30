 📊 Product Analytics Project (SQL + Python)

## 📌 Project Description
This project demonstrates SQL-based analysis of an e-commerce dataset.
The goal is to analyze customer behavior, revenue, and product categories.

---

## 🗄️ Dataset
A sample dataset was created using SQL with the following fields:
- order_id
- customer_id
- order_date
- category
- product_name
- quantity
- price
- region

---

## 📈 SQL Analysis

### 1. Revenue by Customer
```sql
SELECT 
    customer_id,
    SUM(price * quantity) AS total_revenue
FROM orders
GROUP BY customer_id
ORDER BY total_revenue DESC;


### 2. Revenue by Category
```sql
SELECT 
    category,
    SUM(price * quantity) AS total_revenue
FROM orders
GROUP BY category
ORDER BY total_revenue DESC;


### 3. Average Order Value (AOV)
```sql
SELECT   
    ROUND(AVG(price * quantity), 2) AS avg_order_value
FROM orders;


SELECT 
    customer_id,
    COUNT(order_id) AS orders_count
FROM orders
GROUP BY customer_id
ORDER BY orders_count DESC;

SELECT 
    customer_id,
    COUNT(order_id) AS orders_count
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

## 💡 Insights
- Customer 101 generates the highest revenue
- Electronics category generates the highest revenue
- Average order value is 15,571.43
- Customers 101 and 102 are repeat buyers
- Repeat customers generate the most revenue
