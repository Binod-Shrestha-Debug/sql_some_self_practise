CREATE TABLE Customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(255),
city VARCHAR(255)
);
SELECT * FROM Customers;
INSERT INTO Customers
(customer_id, customer_name, city)
VALUES
(1, 'Ram Sharma', 'Kathmandu'),
(2, 'Sita Karki', 'Pokhara'),
(3, 'Hari Thapa', 'Lalitpur'),
(4, 'Gita Rai', 'Biratnagar'),
(5, 'Ramesh Gurung', 'Chitwan');

CREATE TABLE Orders(
 order_id INT PRIMARY KEY,
 product_name VARCHAR(100),
 quantity INT,
 price DECIMAL(10,2),
 customer_id INT,
 FOREIGN KEY(customer_id)
 REFERENCES Customers(customer_id) 
);

SELECT * FROM Orders ;
INSERT INTO Orders
(order_id, product_name, quantity, price, customer_id)
VALUES
(101, 'Laptop', 1, 85000.00, 1),
(102, 'Mouse', 2, 1500.00, 1),
(103, 'Keyboard', 1, 3500.00, 2),
(104, 'Monitor', 1, 22000.00, 3),
(105, 'Printer', 1, 18000.00, 2),
(106, 'USB Drive', 3, 1200.00, 4),
(107, 'Webcam', 1, 4500.00, 5);

SELECT *
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;

-- or
SELECT * FROM Customers AS c
INNER JOIN Orders AS o
ON c.customer_id = o.customer_id;

-- or
SELECT * FROM Customers 
INNER JOIN Orders 
ON Customers.customer_id = Orders.customer_id;