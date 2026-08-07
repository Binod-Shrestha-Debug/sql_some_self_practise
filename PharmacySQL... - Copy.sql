CREATE TABLE medicines(
medicine_id SERIAL PRIMARY KEY,
medicine_name VARCHAR(255) NOT NULL,
cmpany_name VARCHAR(255),
catagory VARCHAR(255),
batch_number VARCHAR(255) UNIQUE,
manufacture_date DATE,
expire_date DATE,
price DECIMAL(10,2),
stock_quantity INT,
supplier_name VARCHAR(255),
is_available BOOLEAN
);
SELECT * FROM medicines;
INSERT INTO medicines
(medicine_name, company_name, catagory, batch_number, manufacture_date, expire_date, price, stock_quantity, supplier_name, is_available)
VALUES
('Paracetamol', 'ABC pharma', 'Tablet', 'B001', '2026-01-10', '2027-01-12', 1000, 500, 'Health suppliers', TRUE),
('Amoxicillin', 'XYZ pharma', 'Capsule', 'B002', '2025-03-15', '2027-01-09', 1500, 400, 'Medi supply', TRUE),
('Cough syrup', 'Lifecare pharma', 'Syrup', 'B003', '2024-12-01', '2027-01-23', 2000, 200, 'care distributors', FALSE);
ALTER TABLE medicines
RENAME COLUMN cmpany_name TO company_name;
DELETE FROM medicines
WHERE medicine_id=3;
ALTER TABLE medicines
DROP COLUMN expire_date;