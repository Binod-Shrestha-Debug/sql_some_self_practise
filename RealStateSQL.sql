CREATE TABLE real_estate_info11(
property_id INT PRIMARY KEY,
property_name VARCHAR(255) NOT NULL,
property_type VARCHAR(255),
owner_name VARCHAR(255),
agent_name VARCHAR(255),
buyer_name VARCHAR(255),
price DECIMAL(10,2),
area_sqft DECIMAL(10,2),
bedrooms INT,
bathrooms INT,
parking_spaces INT,
property_age INT,
address VARCHAR(255),
city VARCHAR(255),
district VARCHAR(255),
province VARCHAR(255),
country VARCHAR(255),
registration_no VARCHAR(255) UNIQUE,
registration_date DATE,
contact_number VARCHAR(255),
email VARCHAR(255),
payment_method VARCHAR(255),
property_status VARCHAR(255),
is_active BOOLEAN,
transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
SELECT * FROM real_estate_info11;
INSERT INTO real_estate_info11
(property_id, property_name, property_type, owner_name, agent_name, buyer_name, price, area_sqft, bedrooms, bathrooms, parking_spaces, property_age, address, city, district, province, country, registration_no, registration_date, contact_number, email, payment_method, property_status, is_active)
VALUES
(101, 'Green Villa', 'House', 'Sunita Oli', 'Ramesh Sharma', 'Aakash Thapa',8500000.00, 1800.00, 3, 2, 1, 5, 'dang-10', 'ghorahi', 'dang', 'lumbini', 'Nepal', 'REG1001', '2026-01-15', '9801111111', 'sunita@example.com','Bank Transfer', 'Sold', TRUE),
(102, 'Sunrise Apartment', 'Apartment', 'Sandhya Oli', 'Sita KC', 'Bikash Rai', 6500000.00, 1200.00, 2, 2, 1, 3, 'Baneshwor', 'Kathmandu', 'Kathmandu', 'Bagmati', 'Nepal','REG1002', '2026-02-20', '9802222222', 'sandhya@example.com', 'Cash', 'Available', TRUE),
(103, 'Lake View Home', 'House', 'Prakriti Oli', 'Hari Bhandari', 'Rina Gurung', 9800000.00, 2200.00, 4, 3, 2, 2, 'Lakeside', 'Pokhara', 'Kaski', 'Gandaki', 'Nepal', 'REG1003', '2026-03-10', '9803333333', 'prakriti@example.com', 'Cheque', 'Sold', FALSE),
(104, 'Mountain Residency', 'Villa', 'Aaruna Oli', 'Kiran Adhikari', 'Suman Lama', 12500000.00, 3000.00, 5, 4, 2, 1, 'Bharatpur-10', 'Bharatpur', 'Chitwan', 'Bagmati', 'Nepal', 'REG1004', '2026-04-05', '9804444444', 'aaruna@example.com', 'Bank Transfer', 'Available', TRUE),
(105, 'City Plaza', 'Commercial', 'Nisana Oli', 'Dipesh Karki', 'Manish Shrestha', 15000000.00, 3500.00, 0, 2, 5, 7, 'Putalisadak', 'Kathmandu', 'Kathmandu', 'Bagmati', 'Nepal', 'REG1005', '2026-05-18', '9805555555', 'nisana@example.com', 'Online Payment', 'Sold', FALSE);

SELECT * FROM real_estate_info11
WHERE price > 800000;

SELECT * FROM real_estate_info11
WHERE property_status = 'Available';

SELECT * FROM real_estate_info11
WHERE city = 'Kathmandu';

SELECT * FROM real_estate_info11
WHERE bedrooms >= 3;

SELECT * FROM real_estate_info11
ORDER BY price DESC;

SELECT * FROM real_estate_info11
WHERE property_name LIKE 'S%';

SELECT * FROM real_estate_info11
WHERE price BETWEEN 10000000 AND 30000000;

SELECT * FROM real_estate_info11
WHERE city IN ('Kathmandu', 'Pokhara');

