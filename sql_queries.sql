CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    category VARCHAR(50),
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    region VARCHAR(50)
);

INSERT INTO orders VALUES
(1, 101, '2026-01-05', 'Electronics', 'Headphones', 2, 15000, 'Almaty'),
(2, 102, '2026-01-06', 'Home', 'Lamp', 1, 8000, 'Astana'),
(3, 101, '2026-01-10', 'Electronics', 'Mouse', 1, 5000, 'Almaty'),
(4, 103, '2026-01-12', 'Sports', 'Dumbbell', 2, 12000, 'Karaganda'),
(5, 104, '2026-01-15', 'Home', 'Chair', 1, 25000, 'Shymkent'),
(6, 102, '2026-01-18', 'Electronics', 'Keyboard', 1, 10000, 'Astana'),
(7, 101, '2026-01-20', 'Sports', 'Yoga Mat', 1, 7000, 'Almaty');


SELECT 
    customer_id,
    SUM(price * quantity) AS total_revenue
FROM orders
GROUP BY customer_id
ORDER BY total_revenue DESC;

```sql
-- 4. Топ категорий по выручке
SELECT 
    category,
    SUM(price * quantity) AS total_revenue
FROM orders
GROUP BY category
ORDER BY total_revenue DESC;
