CREATE TABLE Human_Beings_Details(
person_id SERIAL PRIMARY KEY,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255),
full_name VARCHAR(255),
gender VARCHAR(255),
date_of_birth DATE,
age INT,
nationality VARCHAR(255),
citizenship_no VARCHAR(255),
passport_no VARCHAR(255),
phone VARCHAR(255),
email VARCHAR(255),
address VARCHAR(255),
city VARCHAR(255),
province VARCHAR(255),
country VARCHAR(255),
blood_group VARCHAR(255),
height DECIMAL(255),
weight DECIMAL(255),
eye_color VARCHAR(255),
hair_color VARCHAR(255),
marital_status VARCHAR(255),
occupation VARCHAR(255),
company_name VARCHAR(255),
designation VARCHAR(255),
monthly_income DECIMAL(10,2),
education VARCHAR(255),
university_name VARCHAR(255),
religion VARCHAR(255),
mother_tongue VARCHAR(255),
father_name VARCHAR(255),
mother_name VARCHAR(255),
spouse_name VARCHAR(255),
emergency_contact VARCHAR(255),
emergency_phone VARCHAR(255),
registration_date DATE DEFAULT CURRENT_DATE,
transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
is_active BOOLEAN
);
SELECT * FROM Human_Beings_Details;
INSERT INTO Human_Beings_Details
(first_name, last_name, full_name, gender, date_of_birth, age, nationality, citizenship_no, passport_no, phone, email, address, city, province, country, blood_group, height, weight, eye_color, hair_color, marital_status, occupation, company_name, designation, monthly_income, education, university_name, religion, mother_tongue, father_name, mother_name, spouse_name, emergency_contact, emergency_phone, is_active)
VALUES
('dipak', 'oli', 'dipak oli', 'Male', '1998-05-12', 28, 'Nepali', '12-01-75-12345', 'PA1234567', '980111123', 'diapk@gmail.com', 'Baneshwor', 'Kathmandu', 'Bagmati', 'Nepal', 'A+', 170.50, 68.50, 'Brown', 'Black', 'Single', 'Software Engineer', 'ABC Tech', 'Developer', 85000.00, 'Bachelor', 'Tribhuvan University', 'Hindu', 'Nepali', 'Hari Sharma', 'Maya Sharma', NULL, 'Hari Sharma', '9809999991', TRUE),
('sandhya', 'oli', 'sandhya oli', 'Female', '2000-07-11', 19, 'Nepali', '11-02-80-54321', 'PA2345678', '9865647884', 'sandhya@gmail.com', 'Pokhara', 'Pokhara', 'Gandaki', 'Nepal', 'B+', 155.00, 54.20, 'Black', 'Black', 'Single', 'teacher', 'Bright School', 'Secondary Teacher', 55000.00, 'Master', 'Pokhara University', 'Hindu', 'Nepali', 'motiram oli', 'rupa oli', NULL, 'motiram oli', '9812345687', TRUE),
('Pooja', 'Sharma', 'Pooja Sharma', 'Female', '2002-11-18', 23, 'Nepali', '18-07-90-65432', 'PA5678901', '9805467543', 'pooja@gmail.com', 'Bharatpur', 'Chitwan', 'Bagmati', 'Nepal', 'A-', 162.50, 56.00, 'Brown', 'Brown', 'Single', 'Nurse', 'City Hospital', 'Staff Nurse', 48000.00, 'Bachelor in Nursing', 'Kathmandu University', 'Hindu', 'Nepali', 'Madan Sharma', 'Saraswati Sharma', NULL, 'Madan Sharma', '9876453245', FALSE);

SELECT MAX(monthly_income)FROM Human_Beings_Details;
SELECT MIN(monthly_income)FROM Human_Beings_Details;
SELECT SUM(monthly_income)FROM Human_Beings_Details;
SELECT AVG(monthly_income)FROM Human_Beings_Details;
SELECT COUNT(monthly_income)FROM Human_Beings_Details;
SELECT COUNT(*)FROM Human_Beings_Details;
