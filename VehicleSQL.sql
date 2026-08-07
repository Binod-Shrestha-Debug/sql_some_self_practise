CREATE TABLE vehicle_details2(
vehicle_id SERIAL PRIMARY KEY,
vehicle_name VARCHAR(255),
vehicle_type VARCHAR(255),
registratio_no VARCHAR(255),
chassis_no VARCHAR(255),
engine_no VARCHAR(255),
brand VARCHAR(255),
model VARCHAR(255),
color VARCHAR(255),
manufacturing_year INT,
owner_name VARCHAR(255),
driver_name VARCHAR(255),
age INT,
fuel_type VARCHAR(255),
transmission_type VARCHAR(255),
seating_capacity INT,
mileage DECIMAL(10,2),
purchase_price DECIMAL(10,2),
seelling_price DECIMAL(10,2),
insurance_company VARCHAR(255),
insurance_number VARCHAR(255),
insurance_expiry DATE,
phone VARCHAR(255),
email VARCHAR(255),
address VARCHAR(255),
city VARCHAR(255),
province VARCHAR(255),
service_cednter VARCHAR(255),
last_service_date DATE,
next_service_date DATE,
payment_method VARCHAR(255),
vehicle_status VARCHAR(255),
registration_date DATE DEFAULT CURRENT_DATE,
traansaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
is_active BOOLEAN
);
SELECT * FROM vehicle_details2;
INSERT INTO vehicle_details2
(vehicle_name, vehicle_type, registration_no, chassis_no, engine_no, brand, model, color, manufacturing_year, owner_name, driver_name, age, fuel_type, transmission_type, seating_capacity, mileage, purchase_price, seelling_price, insurance_company, insurance_number, insurance_expiry, phone, email, address, city, province, service_cednter, last_service_date, next_service_date, payment_method, vehicle_status, is_active)
VALUES
('Honda City','Car','BA-3-CHA-1111','CH111111','EN111111','Honda','City','Silver',2021,'Aakash Thapa','Hari Lama',4,'Petrol','Manual',5,17.80,22000.00,20500.00,'Shikhar Insurance','INS1001','2027-08-10','9800000001','aakash@gmail.com','Lalitpur','Lalitpur','Bagmati','Honda Service Center','2026-05-20','2026-11-20','Cash','Available',TRUE),
('Hyundai Creta','SUV','BA-4-CHA-2222','CH222222','EN222222','Hyundai','Creta','Black',2023,'Binod KC','Ramesh Bista',2,'Diesel','Automatic',5,20.40,32000.00,30000.00,'Sagarmatha Insurance','INS1002','2028-01-15','9800000002','binod@gmail.com','Pokhara','Pokhara','Gandaki','Hyundai Service Center','2026-07-01','2027-01-01','Credit Card','Sold',TRUE),
('Tata Nexon','SUV','BA-5-CHA-3333','CH333333','EN333333','Tata','Nexon','Blue',2020,'Suman Shrestha','Kiran Gurung',5,'Diesel','Manual',5,19.30,21000.00,18500.00,'Reliable Insurance','INS1003','2027-03-20','9800000003','suman@gmail.com','Biratnagar','Biratnagar','Koshi','Tata Service Center','2026-04-10','2026-10-10','Online Payment','Available',FALSE);

ALTER TABLE vehicle_details2
RENAME COLUMN registratio_no TO registration_no;

TRUNCATE TABLE vehicle_details2;
TRUNCATE TABLE vehicle_details1 RESTART IDENTITY;