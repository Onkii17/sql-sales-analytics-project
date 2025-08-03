🧠 SQL Sales Analytics Project

Author: Onkar  
Tools Used: SQL (DBeaver + SQLite/MySQL)

---

📊 Project Overview

This is a beginner-to-intermediate level SQL project that simulates a real-world **e-commerce sales analysis**. It involves querying a relational database with two tables: `customers` and `orders`, and solving 10 business-critical problems using SQL.

---

🧱 Database Structure

 🔹 Table 1: `customers`

| customer_id | name   | city    |
|-------------|--------|---------|
| 1           | Onkar  | Mumbai  |
| 2           | Sneha  | Pune    |
| 3           | Riya   | Nagpur  |
| 4           | Amit   | Nashik  |

---
 🔹 Table 2: `orders`

| order_id | customer_id | product   | amount | order_date |
|----------|-------------|-----------|--------|------------|
| 101      | 1           | Keyboard  | 1500   | 2024-06-01 |
| 102      | 1           | Mouse     | 700    | 2024-06-03 |
| ...      | ...         | ...       | ...    | ...        |

---

🎯 Business Questions Solved

1. List all customer names and the products they ordered
2. Calculate total spending per customer
3. Identify top 2 highest spending customers
4. Show cities with total orders > ₹2000
5. Find products sold more than once
6. Identify day with highest total sales
7. List customers who ordered a "Mouse"
8. Count how many orders each customer placed
9. Calculate average order value per city
10. Find the customer who made the single highest order

