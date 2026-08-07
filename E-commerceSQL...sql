CREATE TABLE customers(
customer_id SERIAL PRIMARY KEY,
customer_name VARCHAR(255) NOT NULL,
customer_phone VARCHAR(255),
cstomer_email VARCHAR(255),
customer_address VARCHAR(255),
customer_city VARCHAR(255),
registration_date DATE DEFAULT CURRENT_DATE,
is_active BOOLEAN
);
SELECT * FROM customers;
INSERT INTO customers
(customer_name, customer_phone, customer_email, customer_address, customer_city, is_active)
VALUES
('sandhya oli', '9818250956', 'sandhyaoli89@gmail.ccom', 'hamropustak', 'kathmandu', TRUE),
('prakriti oli', '9865226943', 'prakriti90@gamil.com', 'lakeside', 'pokhara', TRUE),
('nisana oli', '9851080438', 'nisanaoli70@gmail.com', 'ranibari', 'kathmandu', FALSE);
ALTER TABLE customers
RENAME COLUMN cstomer_email TO customer_email;

TRUNCATE TABLE customers;
TRUNCATE TABLE customers RESTART IDENTITY;

DELETE FROM customers
WHERE customer_id=2;

ALTER TABLE customers
DROP COLUMN customer_city;

DROP TABLE IF EXISTS customers;


