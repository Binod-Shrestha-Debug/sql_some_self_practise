CREATE TABLE products(
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(255),
poduct_category VARCHAR(255),
product_brand VARCHAR(255),
product_color VARCHAR(255),
product_storage VARCHAR(255),
product_price DECIMAL(10,2),
product_stock INT,
supplier VARCHAR(255),
launch_date DATE,
is_available BOOLEAN
);
SELECT * FROM products;
INSERT INTO products
(product_name,product_category,product_brand,product_color,product_storage,product_price,product_stock,supplier,launch_date,is_available)
VALUES
('iPhone 16', 'Smartphone', 'Apple', 'Black', '256GB', 145000.00, 20, 'Apple Nepal', '2025-09-20', TRUE),
('Galaxy S25', 'Smartphone', 'Samsung', 'Blue', '256GB', 135000.00, 18, 'Samsung Nepal', '2025-02-10', TRUE),
('Redmi Note 15', 'Smartphone', 'Xiaomi', 'Gray', '128GB', 35000.00, 50, 'Xiaomi Nepal', '2025-03-15', TRUE),
('MacBook Air M4', 'Laptop', 'Apple', 'Silver', '512GB', 210000.00, 10, 'Apple Nepal', '2025-04-18', TRUE),
('Dell Inspiron 15', 'Laptop', 'Dell', 'Black', '512GB', 98000.00, 12, 'Dell Nepal', '2024-11-05', TRUE),
('Sony WH-1000XM6', 'Headphone', 'Sony', 'Black', 'N/A', 48000.00, 30, 'Sony Nepal', '2025-05-01', TRUE),
('Apple Watch Series 11', 'Smartwatch', 'Apple', 'Silver', '64GB', 75000.00, 15, 'Apple Nepal', '2025-09-25', FALSE),
('iPad Air M3', 'Tablet', 'Apple', 'Purple', '256GB', 98000.00, 22, 'Apple Nepal', '2025-06-20', TRUE),
('Logitech MX Master 3S', 'Mouse', 'Logitech', 'Black', 'N/A', 15000.00, 40, 'Logitech Nepal', '2024-08-10', TRUE),
('HP LaserJet Pro', 'Printer', 'HP', 'White', 'N/A', 42000.00, 8, 'HP Nepal', '2024-12-01', TRUE);

ALTER TABLE products
RENAME COLUMN poduct_category TO product_category;

