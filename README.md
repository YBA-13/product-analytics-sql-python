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

## 💡 Insights
- Customer 101 generates the highest revenue
- Repeat customers bring more value
