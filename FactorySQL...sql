CREATE TABLE Factory_Details3(
factory_id INT PRIMARY KEY,
factory_name VARCHAR(255) NOT NULL,
factory_type VARCHAR(255),
registration_no VARCHAR(255),
owner_name VARCHAR(255),
manager_name VARCHAR(255),
address VARCHAR(255),
city VARCHAR(255),
province VARCHAR(255),
country VARCHAR(255),
phone VARCHAR(255),
email VARCHAR(255),
product_name VARCHAR(255),
product_category VARCHAR(255),
production_capacity INT,
production_date DATE,
employee_count INT,
working_shift VARCHAR(255),
raw_material VARCHAR(255),
supplier_name VARCHAR(255),
unit_price DECIMAL(10,2),
total_production INT,
total_sales DECIMAL(10,2),
payment_method VARCHAR(255),
registration_date DATE DEFAULT CURRENT_DATE,
transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
is_active BOOLEAN
);
SELECT * FROM Factory_Details3;
INSERT INTO Factory_Details3
(factory_id, factory_name, factory_type, registration_no, owner_name, manager_name, address, city, province, country, phone, email, product_name, product_category, production_capacity, production_date, employee_count, working_shift, raw_material, supplier_name, unit_price, total_production, total_sales, payment_method, is_active)
VALUES
(101, 'everest food', 'food', 'REG101', 'prakriti oli', 'nisana oli', 'baneshwor', 'kathmandu', 'bagmati', 'nepal', '9762637993', 'everest34@gmail.com', 'noodles', 'food', 1000, '2026-01-20', 150, 'day', 'flour', 'ABC supplier', 25000, 9500, 222450, 'online', TRUE),
(103, 'sun pharma', 'medicine', 'REG103', 'sunita oli', 'ravi upreti', 'kathmandu', 'kathmandu', 'bagmati', 'nepal', '9763745645', 'sun62@gmail.com', 'paracetamol', 'medicine', 6000, '2026-01-20', 140, 'night', 'chemical', 'health supplier', 1500, 5900, 80000, 'bank', FALSE);
SELECT MAX(unit_price)FROM Factory_Details2;
SELECT AVG(unit_price)FROM Factory_Details2;
SELECT MIN(unit_price)FROM Factory_Details2;
SELECT SUM(unit_price)FROM Factory_Details2;
SELECT COUNT(unit_price)FROM Factory_Details2;
SELECT COUNT(*)FROM Factory_Details2;

UPDATE Factory_Details3
SET manager_name='sandhya oli'
WHERE factory_id=103;

SELECT * FROM Factory_Details3 ORDER BY total_sales ASC;
SELECT * FROM Factory_Details3 ORDER BY total_sales DESC;