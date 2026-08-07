CREATE TABLE Products_Info(
product_id INT PRIMARY KEY,
product_name VARCHAR(255),
price DECIMAL(10,2)
);
SELECT * FROM Products_Info;
INSERT INTO Products_Info
VALUES
(101,'Laptop',90000),
(102,'Mouse',20000),
(103,'Keyboard',40000);
-- Parents table============================

CREATE TABLE Orders(
order_id INT PRIMARY KEY,
order_date DATE,
product_id INT,
FOREIGN KEY (product_id)
REFERENCES Products_Info(product_id)
);
SELECT * FROM Orders;
INSERT INTO Orders
VALUES
(1,'2026-08-01',101),
(2,'2026-08-02',102),
(3,'2026-08-03',102);
-- Child table 1-=====================

CREATE TABLE Suppliers (
supplier_id INT PRIMARY KEY,
supplier_name VARCHAR(255),
product_id INT,
FOREIGN KEY (product_id)
REFERENCES Products_Info(product_id)
);
SELECT * FROM Suppliers;
INSERT INTO Suppliers 
VALUES
(4,'Tech World ',103),
(5,'ABC Traders',101),
(6,'XYZ Suppliers',101);
--  Child table 2====================

CREATE TABLE Inventory(
inventory_id INT PRIMARY KEY,
stock INT,
product_id INT,
FOREIGN KEY (product_id)
REFERENCES Products_Info(product_id)
);
SELECT * FROM Inventory;
INSERT INTO Inventory
VALUES
(7, 40, 102),
(8, 30, 102),
(9, 50, 103);
--  Child table 3===================

CREATE TABLE Product_Reviews(
review_id INT PRIMARY KEY,
rating INT,
comment1 VARCHAR(100),
product_id INT,
FOREIGN KEY (product_id)
REFERENCES Products_Info(product_id)
);
SELECT * FROM Product_Reviews;
INSERT INTO Product_Reviews
VALUES
(10,5,'Excellent',101),
(11,4,'Good',102),
(12,5,'Very Good',103);
--  Child table 4==============

SELECT *
FROM Products_Info AS p
INNER JOIN Orders AS o
ON p.product_id = o.product_id;

SELECT *
FROM Products_Info AS p
INNER JOIN Suppliers as s
ON p.product_id = s.product_id;

SELECT *
FROM Products_Info AS p
INNER JOIN Inventory as i
ON p.product_id = i.product_id;

SELECT *
FROM Products_Info AS p
INNER JOIN Product_Reviews as pr
ON p.product_id = pr.product_id;

