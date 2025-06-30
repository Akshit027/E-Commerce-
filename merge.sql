-- Customers Table
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100)
);

-- Orders Table
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Customers
INSERT INTO Customers (name, email) VALUES
('Aman Sharma', 'aman@example.com'),
('Priya Mehta', 'priya@example.com'),
('Ravi Kumar', 'ravi@example.com');

-- Orders
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2025-06-20', 1200.00),
(1, '2025-06-21', 1500.00),
(2, '2025-06-22', 800.00);



--SQL JOIN Examples
--a. INNER JOIN
SELECT c.name, o.order_id, o.order_date, o.total_amount
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;


--b. LEFT JOIN
SELECT c.name, o.order_id, o.order_date, o.total_amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;


--c. RIGHT JOIN (Not supported in SQLite)
SELECT c.name, o.order_id, o.order_date, o.total_amount
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;


--d. FULL OUTER JOIN (Only supported in PostgreSQL or SQL Server)
SELECT c.name, o.order_id, o.order_date, o.total_amount
FROM Customers c
FULL OUTER JOIN Orders o ON c.customer_id = o.customer_id;
