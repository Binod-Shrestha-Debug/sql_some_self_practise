CREATE TABLE products1(
product_id INT PRIMARY KEY,
poduct_name VARCHAR(255) NOT NULL,
product_category VARCHAR(255),
product_brand VARCHAR(255),
product_model VARCHAR(255),
product_color VARCHAR(255),
product_storge VARCHAR(255),
product_price DECIMAL(10,2),
stock_quantity INT,
supplier_name VARCHAR(255),
manufacture_date DATE,
warranty_month INT,
country_of_origin VARCHAR(255),
is_available BOOLEAN
);
SELECT * FROM products1;
INSERT INTO products1
(product_id, product_name, product_category, product_brand, product_model, product_color, product_storge, product_price, stock_quantity, supplier_name, manufacture_date, warranty_month, country_of_origin, is_available)
VALUES
(101, 'iphone 15', 'smartphone', 'apple', 'A3090', 'black', '128GB', 250000, 20, 'Tech distributors', '2025-01-15', 12, 'chaina', TRUE),
(102, 'Galaxy s24', 'Smartphone', 'Samsung', 'S921B', 'Silver', '256GB', 50000, 15, 'Mobile world', '2025-02-15', 24, 'America', FALSE),
(103, 'ThinkPad', 'Laptop', 'Lenovo', 'E16 Gen 2', 'black', '512GB SSD', 500000, 8, 'IT Suppliers', '2026-03-14', 24, 'Chaina', TRUE);
ALTER TABLE products1
RENAME COLUMN poduct_name TO product_name;

TRUNCATE TABLE  products1;
TRUNCATE TABLE products1 RESTART IDENTITY;

ALTER TABLE products1
DROP COLUMN product_model;

DROP TABLE IF EXISTS products1;


