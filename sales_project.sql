CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO customers VALUES
(1, 'Onkar', 'Mumbai'),
(2, 'Sneha', 'Pune'),
(3, 'Riya', 'Nagpur'),
(4, 'Amit', 'Nashik');
INSERT INTO orders VALUES
(101, 1, 'Keyboard', 1500, '2024-06-01'),
(102, 1, 'Mouse', 700, '2024-06-03'),
(103, 2, 'Monitor', 8000, '2024-06-02'),
(104, 3, 'Laptop', 55000, '2024-06-05'),
(105, 4, 'Pendrive', 600, '2024-06-03'),
(106, 2, 'Mouse', 700, '2024-06-06'),
(107, 3, 'Keyboard', 1500, '2024-06-07');

--Show all customer names and their order products
SELECT c.name, o.product
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

--Total spending per customer
SELECT c.name, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

--Top 2 highest spending customers
SELECT c.name, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 2;

--Cities with total orders more than ₹2000
SELECT c.city, SUM(o.amount) AS city_total
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.city
HAVING SUM(o.amount) > 2000;

--Products sold more than once
SELECT product, COUNT(*) AS times_sold
FROM orders
GROUP BY product
HAVING COUNT(*) > 1;

--Day with highest total sales
SELECT order_date, SUM(amount) AS total_sales
FROM orders
GROUP BY order_date
ORDER BY total_sales DESC
LIMIT 1;

--List customers who ordered a "Mouse"
SELECT DISTINCT c.name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.product = 'Mouse';

--Count orders per customer
SELECT c.name, COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

--Average order value per city
SELECT c.city, AVG(o.amount) AS avg_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.city;

--Customer who made the single highest order
SELECT c.name, o.product, o.amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
ORDER BY o.amount DESC
LIMIT 1;



