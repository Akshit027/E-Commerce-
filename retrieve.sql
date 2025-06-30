--Select All Columns
SELECT * FROM Products;


--Select Specific Columns
SELECT name, price FROM Products;


--WHERE Clause (Basic Filtering)
SELECT * FROM Customers
WHERE city = 'Delhi';


--AND and OR (Multiple Conditions)
SELECT * FROM Products
WHERE category_id = 1 AND stock > 5;

SELECT * FROM Orders
WHERE order_date = '2025-06-20' OR total_amount > 10000;


--LIKE (Pattern Matching)
SELECT * FROM Customers
WHERE email LIKE '%@example.com';


--BETWEEN (Range Filtering)
SELECT * FROM Products
WHERE price BETWEEN 500 AND 30000;


--Sorting with ORDER BY

--1. Ascending Order (Default)
SELECT * FROM Products
ORDER BY price;

--2. Descending Order
SELECT * FROM Products
ORDER BY price DESC;

--3. Sort by Multiple Columns
SELECT * FROM Orders
ORDER BY customer_id, order_date DESC;

