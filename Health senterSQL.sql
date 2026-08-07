CREATE TABLE Health_Centre1 (
health_center_id INT PRIMARY KEY,
health_center_name VARCHAR(255) NOT NULL,
health_center_type VARCHAR(255),
registration_no VARCHAR(255) UNIQUE,
doctor_name VARCHAR(255),
nurse_name VARCHAR(255),
manager_name VARCHAR(255),
age INT,
salary DECIMAL(10,2),
phone VARCHAR(255),
email VARCHAR(255),
website VARCHAR(255),
address VARCHAR(255),
city VARCHAR(255),
province VARCHAR(255),
country VARCHAR(255),
established_date DATE,
total_doctors INT,
total_nurses INT,
total_staff INT,
total_beds INT,
department VARCHAR(255),
designation VARCHAR(255),
specialization VARCHAR(255),
patient_name VARCHAR(255),
patient_age INT,
patient_gender VARCHAR(255),
disease_name VARCHAR(255),
medicine_name VARCHAR(255),
consultation_fee DECIMAL(10,2),
treatment_cost DECIMAL(10,2),
medicine_cost DECIMAL(10,2),
total_bill DECIMAL(10,2),
bank_name VARCHAR(255),
account_number VARCHAR(255) UNIQUE,
payment_method VARCHAR(255),
health_center_status VARCHAR(255),
registration_date DATE DEFAULT CURRENT_DATE,
transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
is_active BOOLEAN
);

SELECT * FROM Health_Centre1;
INSERT INTO Health_Centre1 
(health_center_id,health_center_name,health_center_type,registration_no,doctor_name,nurse_name,manager_name,age,salary,phone,email,website,address,city,province,country,established_date,total_doctors,total_nurses,total_staff,total_beds,department,designation,specialization,patient_name,patient_age,patient_gender,disease_name,medicine_name,consultation_fee,treatment_cost,medicine_cost,total_bill,bank_name,account_number,payment_method,health_center_status,is_active)
VALUES
(1, 'Everest Health Centre', 'Hospital', 'REG001', 'Deepak Oli', 'Sandhya Oli', 'Nisana Oli', 40, 85000.00, '9800000001', 'deepak@health.com', 'www.everesthealth.com', 'Baneshwor', 'Kathmandu', 'Bagmati', 'Nepal', '2015-01-10', 20, 35, 80, 100, 'Cardiology', 'Senior Doctor', 'Cardiologist', 'Prakriti Oli', 28, 'Female', 'Heart Disease', 'Aspirin', 3000, 10000, 2000, 12700, 'Nabil Bank', '100000001', 'Cash', 'Active', TRUE),
(2, 'Life Care Hospital', 'Hospital', 'REG002', 'Aruna Oli', 'Sunita Oli', 'Gita Oli', 38, 78000.00, '9800000002', 'aruna@health.com', 'www.lifecare.com', 'Putalisadak', 'Kathmandu', 'Bagmati', 'Nepal', '2018-05-15', 18, 30, 70, 90, 'Neurology', 'Consultant', 'Neurologist', 'Deepak Oli', 35, 'Male', 'Migraine', 'Paracetamol', 4000, 5000, 3000, 6500, 'Global IME Bank', '100000002', 'Card', 'Active', TRUE),
(3, 'City Health Clinic', 'Clinic', 'REG003', 'Sandhya Oli', 'Gita Oli', 'Aruna Oli', 36, 70000.00, '9800000003', 'sandhya@health.com', 'www.cityclinic.com', 'Jawalakhel', 'Lalitpur', 'Bagmati', 'Nepal', '2020-07-20', 10, 15, 40, 35, 'General Medicine', 'Medical Officer', 'Physician', 'Sunita Oli', 45, 'Female', 'Fever', 'Ibuprofen', 2000, 2000, 40000, 3100, 'NIC Asia Bank', '100000003', 'eSewa', NULL, FALSE),
(4, 'Sunrise Medical Center', 'Medical Center', 'REG004', 'Prakriti Oli', 'Sunita Oli', 'Deepak Oli', 34, 72000.00, '9800000004', 'prakriti@health.com', 'www.sunrise.com', 'Suryabinayak', 'Bhaktapur', 'Bagmati', 'Nepal', '2019-09-01', 12, 20, 45, 60, 'Pediatrics', 'Pediatrician', 'Child Specialist', 'Nisana Oli', 20, 'Female', 'Flu', 'Cough Syrup', 9000, 25000, 4000, 3800, 'Prabhu Bank', '100000004', 'Bank Transfer', 'Active', TRUE),
(5, 'Green Valley Hospital', 'Hospital', 'REG005', 'Nisana Oli', 'Aruna Oli', 'Gita Oli', 42, 90000.00, '9800000005', 'nisana@health.com', 'www.greenvalley.com', 'Lakeside', 'Pokhara', 'Gandaki', 'Nepal', '2016-11-12', 25, 40, 90, 120, 'Orthopedics', 'Orthopedic Surgeon', 'Bone Specialist', 'Deepak Oli', 50, 'Male', 'Fracture', 'Pain Killer', 18000, 15000, 11000, 17800, 'Siddhartha Bank', '100000005', 'Cash', NULL, TRUE),
(6, 'Himal Health Clinic', 'Clinic', 'REG006', 'Sunita Oli', 'Deepak Oli', 'Prakriti Oli', 37, 76000.00, '9800000006', 'sunita@health.com', 'www.himalhealth.com', 'Dharan', 'Dharan', 'Koshi', 'Nepal', '2021-03-18', 9, 16, 38, 40, 'Dermatology', 'Dermatologist', 'Skin Specialist', 'Gita Oli', 30, 'Female', 'Skin Allergy', 'Cetirizine', 7000, 18000, 2500, 2750, 'Nepal Bank', '100000006', 'Mobile Banking', NULL, FALSE),
(7, 'Healthy Life Hospital',  'Hospital', 'REG007', 'Gita Oli', 'Nisana Oli', 'Sandhya Oli', 39, 82000.00, '9800000007', 'gita@health.com', 'www.healthylife.com','Butwal', 'Butwal', 'Lumbini', 'Nepal', '2017-08-25', 22, 32, 75, 95, 'ENT', 'ENT Specialist', 'Otolaryngologist', 'Aruna Oli', 41, 'Female', 'Ear Infection', 'Amoxicillin', 12000, 45000, 6000, 63000, 'Agricultural Development Bank', '100000007', 'Cash', 'Active', TRUE);

SELECT * FROM Health_Centre1
WHERE is_active=TRUE;

SELECT * FROM Health_Centre1
WHERE is_active=FALSE;

SELECT * FROM Health_Centre1
WHERE health_center_status IS NULL;

SELECT * FROM Health_Centre1
WHERE health_center_status IS NOT NULL;

SELECT * FROM Health_Centre1
WHERE health_center_type='Hospital'
AND salary>45000
AND city='Kathmandu'
AND age>30;

SELECT * FROM Health_Centre1
WHERE age>=30
OR salary>=60000
OR city='Dang'
OR province='karnali';
