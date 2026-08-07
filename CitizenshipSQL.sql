CREATE TABLE Citizenship_Details1 (
citizenship_id INT PRIMARY KEY,
citizenship_no VARCHAR(255) UNIQUE NOT NULL,
full_name VARCHAR(255) NOT NULL,
gender VARCHAR(255),
age INT,
date_of_birth DATE,
father_name VARCHAR(255),
mother_name VARCHAR(255),
spouse_name VARCHAR(255),
phone VARCHAR(255),
email VARCHAR(255),
address VARCHAR(255),
ward_no INT,
municipality VARCHAR(255),
district VARCHAR(255),
province VARCHAR(255),
country VARCHAR(255),
occupation VARCHAR(255),
marital_status VARCHAR(255),
blood_group VARCHAR(255),
issue_date DATE,
issued_district VARCHAR(255),
issuing_officer VARCHAR(255),
nationality VARCHAR(255),
citizenship_status VARCHAR(255),
registration_date DATE DEFAULT CURRENT_DATE,
transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
is_active BOOLEAN
);
SELECT * FROM Citizenship_Details1;
INSERT INTO Citizenship_Details1
(citizenship_id, citizenship_no, full_name, gender, age, date_of_birth, father_name, mother_name, spouse_name, phone, email, address, ward_no, municipality, district, province, country, occupation, marital_status, blood_group, issue_date, issued_district, issuing_officer, nationality, citizenship_status, is_active)
VALUES
(101, '01-76-00001', 'chudamani oli', 'Male', 28, '1998-05-12', 'Hari oli', 'Sita Soli', 'nirmala oli', '9801111111', 'chudamani@gmail.com', 'Baneshwor', 10, 'Kathmandu Metropolitan', 'Kathmandu', 'Bagmati', 'Nepal', 'Software Engineer', 'Single', 'A+', '2020-06-15', 'Kathmandu', 'chudamani oli', 'Nepali', 'Active', TRUE),
(102, '01-76-00002', 'nisana oli', 'Female', 25, '2001-08-20', 'motiram oli', 'rupi oli', 'sita oli', '9802222222', 'nisana@gmail.com', 'Lakeside', 8, 'Pokhara Metropolitan', 'Kaski', 'Gandaki', 'Nepal', 'Teacher', 'Single', 'B+', '2021-02-10', 'Kaski', 'Bishnu Gautam', 'Nepali', 'Active', FALSE),
(103, '01-76-00003', 'dipak oli', 'Male', 35, '1991-03-18', 'Laxman oli', 'Ganga oli', 'Anita oli', '9803333333', 'dipak@gmail.com', 'Biratnagar', 5, 'Biratnagar Metropolitan', 'Morang', 'Koshi', 'Nepal', 'Bank Officer', 'Married', 'O+', '2018-09-05', 'Morang', 'Suresh Nepal', 'Nepali', 'Active', TRUE),
(104, '01-76-00004', 'sandhya oli', 'Female', 19, '2007-05-11', 'motiram oli', 'rupi oli', 'prakriti oli', '9804444444', 'sandhya@gmail.com', 'rolpa', 6, 'rolpa Sub-Metropolitan', 'rolpa', 'lumbini', 'Nepal', 'student', 'single', 'AB+', '2019-12-20', 'rolpa', 'Kamal Sharma', 'Nepali', 'Active', TRUE),
(105, '01-76-00005', 'laxman bhandari', 'Male', 29, '1997-07-10', 'Shyam bhandari', 'Maya bhandari', 'gita bhandari', '9805555555', 'laxman@gmail.com', 'Ranibari', 3, 'Kathmandu Metropolitan', 'Kathmandu', 'Bagmati', 'Nepal', 'Data Analyst', 'Single', 'B-', '2022-04-18', 'Kathmandu', 'Prakash Koirala', 'Nepali', 'Active', TRUE);

SELECT * FROM Citizenship_Details1
WHERE age >= 20;

SELECT * FROM Citizenship_Details1
WHERE district = 'Kathmandu';

DELETE FROM Citizenship_Details1
WHERE citizenship_id = 104;

ALTER TABLE Citizenship_Details1
DROP COLUMN date_of_birth;

UPDATE Citizenship_Details1
SET province = 'rolpa'
WHERE full_name = 'laxman bhandari';

SELECT * FROM Citizenship_Details1 ORDER BY citizenship_id ASC;
SELECT * FROM Citizenship_Details1 ORDER BY citizenship_id DESC;
