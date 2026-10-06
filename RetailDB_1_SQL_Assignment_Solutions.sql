-- =====================================================================
-- SQL Assignment - Basic  |  Database: RetailDB_1
-- Retail platform: Customers, Products, Orders
-- =====================================================================

-- ---------------------------------------------------------------------
-- STEP 1: Create the database
-- ---------------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS RetailDB_1;
USE RetailDB_1;

-- ---------------------------------------------------------------------
-- STEP 2: Create the tables
-- ---------------------------------------------------------------------
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150) UNIQUE,
    city VARCHAR(50),
    signup_date DATE
);

CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    total_amount DECIMAL(10,2),
    payment_mode VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- ---------------------------------------------------------------------
-- STEP 3: Insert data (loaded from the provided Customers.xlsx,
-- Products.xlsx, and Orders.xlsx files)
-- ---------------------------------------------------------------------
INSERT INTO Customers (customer_id, name, email, city, signup_date) VALUES
(1, 'Rohit Kumar', 'rohit.kumar@gmail.com', 'Delhi', '2023-01-12'),
(2, 'Sneha Sharma', 'sneha.sharma@yahoo.com', 'Mumbai', '2023-02-05'),
(3, 'Amit Patel', 'amit.patel@gmail.com', 'Ahmedabad', '2023-02-18'),
(4, 'Priya Reddy', 'priya.reddy@gmail.com', 'Hyderabad', '2023-03-02'),
(5, 'Karan Singh', 'karan.singh@outlook.com', 'Chennai', '2023-03-15'),
(6, 'Neha Verma', 'neha.verma@gmail.com', 'Pune', '2023-04-01'),
(7, 'Arjun Mehta', 'arjun.mehta@gmail.com', 'Bengaluru', '2023-04-20'),
(8, 'Ritika Gupta', 'ritika.gupta@yahoo.com', 'Kolkata', '2023-05-12'),
(9, 'Vikram Joshi', 'vikram.joshi@gmail.com', 'Lucknow', '2023-05-25'),
(10, 'Ananya Das', 'ananya.das@gmail.com', 'Bhubaneswar', '2023-06-08'),
(11, 'Suresh Iyer', 'suresh.iyer@gmail.com', 'Chennai', '2023-06-20'),
(12, 'Megha Kapoor', 'megha.kapoor@yahoo.com', 'Jaipur', '2023-07-03'),
(13, 'Ravi Shankar', 'ravi.shankar@gmail.com', 'Delhi', '2023-07-15'),
(14, 'Tanya Mishra', 'tanya.mishra@gmail.com', 'Noida', '2023-08-01'),
(15, 'Aditya Jain', 'aditya.jain@gmail.com', 'Indore', '2023-08-14');

INSERT INTO Products (product_id, product_name, category, price) VALUES
(1, 'iPhone 15', 'Electronics', 79999),
(2, 'Samsung Galaxy S24', 'Electronics', 74999),
(3, 'Noise Smartwatch', 'Wearables', 4999),
(4, 'Boat Earbuds', 'Wearables', 2499),
(5, 'Kurta Set', 'Fashion', 1999),
(6, 'Running Shoes', 'Fashion', 2999),
(7, 'Prestige Mixer Grinder', 'Home Appliances', 6499),
(8, 'Sony Bravia 55” TV', 'Electronics', 59999),
(9, 'Lenovo Laptop', 'Electronics', 55999),
(10, 'Philips Trimmer', 'Personal Care', 1499);

INSERT INTO Orders (order_id, customer_id, product_id, order_date, quantity, total_amount, payment_mode) VALUES
(1, 1, 1, '2024-01-05', 1, 79999, 'UPI'),
(2, 2, 2, '2024-01-10', 1, 74999, 'Credit Card'),
(3, 3, 3, '2024-01-15', 2, 9998, 'Debit Card'),
(4, 4, 4, '2024-01-18', 1, 2499, 'UPI'),
(5, 5, 5, '2024-01-20', 3, 5997, 'Cash'),
(6, 6, 6, '2024-01-22', 1, 2999, 'UPI'),
(7, 7, 7, '2024-01-25', 1, 6499, 'Credit Card'),
(8, 8, 8, '2024-02-01', 1, 59999, 'Net Banking'),
(9, 9, 9, '2024-02-05', 1, 55999, 'UPI'),
(10, 10, 10, '2024-02-07', 2, 2998, 'Debit Card'),
(11, 11, 1, '2024-02-10', 1, 79999, 'Credit Card'),
(12, 12, 2, '2024-02-12', 1, 74999, 'Net Banking'),
(13, 13, 3, '2024-02-14', 1, 4999, 'UPI'),
(14, 14, 4, '2024-02-16', 2, 4998, 'Cash'),
(15, 15, 5, '2024-02-20', 1, 1999, 'UPI'),
(16, 6, 6, '2024-02-25', 2, 5998, 'Credit Card'),
(17, 7, 7, '2024-03-01', 1, 6499, 'UPI'),
(18, 8, 8, '2024-03-05', 1, 59999, 'Debit Card'),
(19, 9, 9, '2024-03-07', 2, 111998, 'Credit Card'),
(20, 10, 10, '2024-03-10', 1, 1499, 'Cash'),
(21, 11, 5, '2024-03-12', 2, 3998, 'UPI'),
(22, 12, 3, '2024-03-15', 1, 4999, 'Net Banking'),
(23, 13, 4, '2024-03-18', 3, 7497, 'Credit Card'),
(24, 14, 6, '2024-03-20', 1, 2999, 'UPI'),
(25, 15, 1, '2024-03-25', 1, 79999, 'Debit Card'),
(26, 2, 7, '2024-03-28', 1, 6499, 'Credit Card'),
(27, 5, 8, '2024-04-01', 1, 59999, 'UPI'),
(28, 9, 2, '2024-04-03', 1, 74999, 'Cash'),
(29, 13, 9, '2024-04-05', 1, 55999, 'Net Banking'),
(30, 14, 10, '2024-04-07', 2, 2998, 'UPI');

-- =====================================================================
-- STEP 4: Task Queries
-- =====================================================================

-- 1. Fetch all customers from the database.
SELECT * FROM Customers;

-- 2. Show only the customer names and their cities.
SELECT name, city FROM Customers;

-- 3. Find customers who live in Mumbai.
SELECT * FROM Customers
WHERE city = 'Mumbai';

-- 4. Get all orders placed after 1st August 2024.
SELECT * FROM Orders
WHERE order_date > '2024-08-01';

-- 5. List all products priced greater than ₹5000.
SELECT * FROM Products
WHERE price > 5000;

-- 6. Count how many customers exist in the system.
SELECT COUNT(*) AS total_customers
FROM Customers;

-- 7. Update a customer's city (e.g., change Rohit Kumar's city to Hyderabad).
UPDATE Customers
SET city = 'Hyderabad'
WHERE name = 'Rohit Kumar';

-- 8. Delete an order (e.g., remove order with ID = 5).
DELETE FROM Orders
WHERE order_id = 5;

-- 9. Display product names with their original price and price increased by 10%.
SELECT product_name,
       price AS original_price,
       price * 1.10 AS price_increased_10pct
FROM Products;

-- 10. Show only the unique cities where customers live.
SELECT DISTINCT city
FROM Customers;

-- 11. Get the first 3 customers who signed up.
SELECT * FROM Customers
ORDER BY signup_date ASC
LIMIT 3;

-- 12. Skip the first 2 customers and fetch the next 3 customers.
SELECT * FROM Customers
ORDER BY customer_id ASC
LIMIT 3 OFFSET 2;

-- 13. Find products with prices between ₹2000 and ₹6000.
SELECT * FROM Products
WHERE price BETWEEN 2000 AND 6000;

-- 14. Find customers who are from Mumbai OR Chennai.
SELECT * FROM Customers
WHERE city IN ('Mumbai', 'Chennai');

-- 15. Find customers who are NOT from Delhi.
SELECT * FROM Customers
WHERE city <> 'Delhi';

-- 16. Find orders that are NOT paid by UPI.
SELECT * FROM Orders
WHERE payment_mode <> 'UPI';

-- 17. Get the average order amount across all orders.
SELECT AVG(total_amount) AS average_order_amount
FROM Orders;

-- 18. Show the highest order amount.
SELECT MAX(total_amount) AS highest_order_amount
FROM Orders;

-- 19. Show the lowest product price.
SELECT MIN(price) AS lowest_product_price
FROM Products;

-- 20. Find the total money spent across all orders.
SELECT SUM(total_amount) AS total_money_spent
FROM Orders;

-- =====================================================================
-- End of Assignment
-- =====================================================================
