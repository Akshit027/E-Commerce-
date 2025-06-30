--Apply Aggregate Functions on Numeric Columns

--1. Total Sales Value Across All Orders
SELECT SUM(total_amount) AS total_sales
FROM Orders;

--2. Total Number of Orders
SELECT COUNT(order_id) AS total_orders
FROM Orders;

--3.Average Product Price
SELECT AVG(price) AS avg_price
FROM Products;

--Use GROUP BY to Categorize

--1. Total Sales by Each Customer
SELECT c.customer_id, c.name, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

--2. Number of Orders Per Day
SELECT order_date, COUNT(order_id) AS orders_count
FROM Orders
GROUP BY order_date;

--3. Product Sales by Category
SELECT cat.category_name, SUM(oi.price * oi.quantity) AS total_category_sales
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
JOIN Categories cat ON p.category_id = cat.category_id
GROUP BY cat.category_name;


--Filter Groups Using HAVING

--1. Customers Who Spent More Than 10,000
SELECT c.customer_id, c.name, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING SUM(o.total_amount) > 10000;

--2. Categories with Total Sales Over 1000
SELECT cat.category_name, SUM(oi.price * oi.quantity) AS total_sales
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
JOIN Categories cat ON p.category_id = cat.category_id
GROUP BY cat.category_name
HAVING SUM(oi.price * oi.quantity) > 1000;
