CREATE TABLE Student_Records (
student_id INT PRIMARY KEY,
student_name VARCHAR(255) NOT NULL,
gender VARCHAR(255),
age INT CHECK(age>18),
fee DECIMAL(10,2) CHECK(fee>10000),
date_of_birth DATE,
roll_no VARCHAR(255) UNIQUE,
phone VARCHAR(255),
email VARCHAR(255) UNIQUE,
address VARCHAR(255),
city VARCHAR(255),
province VARCHAR(255),
country VARCHAR(255),
faculty VARCHAR(255),
program VARCHAR(255),
semester VARCHAR(255),
section VARCHAR(255),
english_marks DECIMAL(10,2),
mathematics_marks DECIMAL(10,2),
science_marks DECIMAL(10,2),
computer_marks DECIMAL(10,2),
social_marks DECIMAL(10,2),
total_marks DECIMAL(10,2),
percentage DECIMAL(10,2),
grade VARCHAR(255),
attendance DECIMAL(10,2),
registration_date DATE DEFAULT CURRENT_DATE,
transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
is_active BOOLEAN
);
SELECT * FROM Student_Records;
INSERT INTO Student_Records
(student_id, student_name, gender, age, fee, date_of_birth, roll_no, phone, email, address, city, province, country, faculty, program, semester, section, english_marks, mathematics_marks, science_marks, computer_marks, social_marks, total_marks, percentage, grade, attendance, is_active)
VALUES
(101, 'deepak oli', 'Male', 20, 15000, '2006-05-12', 'STU001', '9889765434', 'deepak@gmail.com', 'Baneshwor', 'Kathmandu', 'Bagmati', 'Nepal', 'Science', 'BCA', 'First', 'A', 85, 90, 88, 95, 80, 438, 87.60, 'A', 96.50, TRUE),
(102, 'sandhya oli', 'Female', 21, 20000, '2007-08-20', 'STU002', '9862637995', 'sandhya@gmail.com', 'Pokhara', 'Pokhara', 'Gandaki', 'Nepal', 'Management', 'BBA', 'Second', 'B', 78, 82, 80, 88, 84, 412, 82.40, 'A-', 95.20, TRUE),
(103, 'Gita oli', 'Female', 22, 18000, '2006-11-25', 'STU004', '9844963171', 'gita@gmail.com', 'Lalitpur', 'Lalitpur', 'Bagmati', 'Nepal', 'Humanities', 'BA', 'First', 'C', 70, 75, 72, 80, 74, 371, 74.20, 'B', 93.00, FALSE);



CREATE TABLE Student_Records1 (
student_id INT PRIMARY KEY,
student_name VARCHAR(255) NOT NULL,
gender VARCHAR(255),
age INT,
fee DECIMAL(10,2),
date_of_birth DATE,
roll_no VARCHAR(255) UNIQUE,
phone VARCHAR(255),
email VARCHAR(255) UNIQUE,
address VARCHAR(255),
city VARCHAR(255),
province VARCHAR(255),
country VARCHAR(255),
faculty VARCHAR(255),
program VARCHAR(255),
semester VARCHAR(255),
section VARCHAR(255),
english_marks DECIMAL(10,2),
mathematics_marks DECIMAL(10,2),
science_marks DECIMAL(10,2),
computer_marks DECIMAL(10,2),
social_marks DECIMAL(10,2),
total_marks DECIMAL(10,2),
percentage DECIMAL(10,2),
grade VARCHAR(255),
attendance DECIMAL(10,2),
registration_date DATE DEFAULT CURRENT_DATE,
transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
is_active BOOLEAN
);
SELECT * FROM Student_Records1;
INSERT INTO Student_Records1
(student_id, student_name, gender, age, fee, date_of_birth, roll_no, phone, email, address, city, province, country, faculty, program, semester, section, english_marks, mathematics_marks, science_marks, computer_marks, social_marks, total_marks, percentage, grade, attendance, is_active)
VALUES
(101, 'deepak oli', 'Male', 20, 15000, '2006-05-12', 'STU001', '9889765434', 'deepak@gmail.com', 'Baneshwor', 'Kathmandu', 'Bagmati', 'Nepal', 'Science', 'BCA', 'First', 'A', 85, 90, 88, 95, 80, 438, 87.60, 'A', 96.50, TRUE),
(102, 'sandhya oli', 'Female', 21, 20000, '2007-08-20', 'STU002', '9862637995', 'sandhya@gmail.com', 'Pokhara', 'Pokhara', 'Gandaki', 'Nepal', 'Management', 'BBA', 'Second', 'B', 78, 82, 80, 88, 84, 412, 82.40, 'A-', 95.20, TRUE),
(103, 'Gita oli', 'Female', 22, 18000, '2006-11-25', 'STU004', '9844963171', 'gita@gmail.com', 'Lalitpur', 'Lalitpur', 'Bagmati', 'Nepal', 'Humanities', 'BA', 'First', 'C', 70, 75, 72, 80, 74, 371, 74.20, 'B', 93.00, FALSE);

SELECT * FROM Student_Records1
WHERE age>18;

SELECT * FROM Student_Records1
WHERE city='Pokhara';

SELECT * FROM Student_Records1
WHERE age>18 AND city='Pokhara';

SELECT * FROM Student_Records1
WHERE age>18 OR city='Rolpa';

SELECT * FROM Student_Records1
WHERE age>18;

SELECT * FROM Student_Records1
WHERE age BETWEEN 20 AND 25;

SELECT * FROM Student_Records1
WHERE city IN ('Kathmandu', 'Pokhara', 'Lalitpur');

SELECT * FROM Student_Records1
WHERE city NOT IN ('Dang', 'Rolpa', 'Gaighat');

SELECT * FROM Student_Records1 LIMIT 2;

SELECT * FROM Student_Records1 ORDER BY student_id ASC
LIMIT 2;

SELECT * FROM Student_Records1
WHERE age>18 LIMIT 3;






