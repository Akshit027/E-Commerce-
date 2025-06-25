-- Insert Customers
INSERT INTO Customers (name, email, phone, address)
VALUES 
('Aman Sharma', 'aman@example.com', '9876543210', 'Delhi, India'),
('Priya Mehta', 'priya@example.com', NULL, 'Mumbai, India'),
('Ravi Kumar', 'ravi@example.com', '9123456789', NULL);

-- Insert Categories
INSERT INTO Categories (category_name)
VALUES 
('Electronics'),
('Books'),
('Clothing');

-- Insert Products
INSERT INTO Products (name, price, stock, category_id)
VALUES 
('Smartphone', 25000.00, 10, 1),
('Laptop', 55000.00, 5, 1),
('Novel', 500.00, 100, 2),
('T-shirt', 800.00, 50, 3);

-- Insert Orders
INSERT INTO Orders (customer_id, order_date, total_amount)
VALUES 
(1, '2025-06-20', 25800.00),
(2, '2025-06-21', 500.00);

-- Insert OrderItems
INSERT INTO OrderItems (order_id, product_id, quantity, price)
VALUES 
(1, 1, 1, 25000.00),
(1, 4, 1, 800.00),
(2, 3, 1, 500.00);

-- Insert Payments
INSERT INTO Payments (order_id, payment_date, amount_paid, payment_method)
VALUES 
(1, '2025-06-20', 25800.00, 'Credit Card'),
(2, '2025-06-21', 500.00, 'UPI');


--Update stock after a product is sold
UPDATE Products
SET stock = stock - 1
WHERE product_id = 1;


--Delete a customer who canceled their account
DELETE FROM Customers
WHERE customer_id = 3;
