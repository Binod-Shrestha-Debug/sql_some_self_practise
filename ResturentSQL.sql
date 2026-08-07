CREATE TABLE orders (
order_id SERIAL PRIMARY KEY,
customer_name VARCHAR(255) NOT NULL,
oder_foodname VARCHAR(255),
order_quantity INT,
order_price DECIMAL(10,2),
order_date DATE,
order_paymentmethod VARCHAR(255),
order_tablenumber INT,
order_watername VARCHAR(255),
is_paid BOOLEAN
);
SELECT * FROM orders;
INSERT INTO orders
( customer_name,order_foodname,order_quantity,order_price,order_date,order_paymentmethod,order_tablenumber,order_watername,is_paid)
VALUES
('prakriti oli', 'pizza', 1, 3000, '2026-04-25', 'bank', 5, 'subas', TRUE),
('sandhya oli', 'momo', 2, 4000, '2026-05-08', 'e-sewa', 6, 'bikash', TRUE),
('nisana oli', 'puriroti', 3, 2000, '2026-06-11', 'khalti', 3, 'sunita', FALSE);
ALTER TABLE orders
RENAME COLUMN oder_foodname TO order_foodname;