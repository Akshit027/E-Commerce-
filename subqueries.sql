--Scalar Subquery
--Example: Show customers who spent more than the average order total
SELECT name, customer_id
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
    GROUP BY customer_id
    HAVING SUM(total_amount) > (
        SELECT AVG(total_amount)
        FROM Orders
    )
);

--Correlated Subquery
--Example: List all customers and their latest order amount
SELECT name,
       (SELECT total_amount
        FROM Orders o
        WHERE o.customer_id = c.customer_id
        ORDER BY order_date DESC
        LIMIT 1) AS latest_order
FROM Customers c;

--Subquery with IN
--Example: Find customers who have placed orders
SELECT name
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
);

--Subquery with EXISTS
--Example: Find customers who have placed at least one order
SELECT name
FROM Customers c
WHERE EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.customer_id = c.customer_id
);

--Subquery with = (Scalar Subquery in SELECT)
--Example: Average order value for each customer (using subquery in SELECT)
SELECT name,
       (SELECT AVG(total_amount)
        FROM Orders o
        WHERE o.customer_id = c.customer_id) AS avg_order_value
FROM Customers c;
