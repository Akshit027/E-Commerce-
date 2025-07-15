-- Stored Procedure: Add a new product
DELIMITER //
CREATE PROCEDURE AddProduct (
    IN p_name VARCHAR(100),
    IN p_price DECIMAL(10, 2),
    IN p_stock INT
)
BEGIN
    INSERT INTO Products (name, price, stock)
    VALUES (p_name, p_price, p_stock);
END;
//
DELIMITER ;


-- Function: Calculate total order amount
DELIMITER //
CREATE FUNCTION GetOrderTotal(order_id INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(oi.quantity * p.price)
    INTO total
    FROM OrderItems oi
    JOIN Products p ON oi.product_id = p.product_id
    WHERE oi.order_id = order_id;
    RETURN total;
END;
//
DELIMITER ;


-- Call stored procedure
CALL AddProduct('Smartwatch', 2999.99, 10);

-- Use function
SELECT GetOrderTotal(1) AS total_amount;

