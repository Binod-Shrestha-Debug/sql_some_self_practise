CREATE TABLE Student_Info (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    age INT,
    gender VARCHAR(20),
    marks DECIMAL(5,2),
    salary DECIMAL(10,2),
    city VARCHAR(100),
    course VARCHAR(100),
    phone VARCHAR(20),
    admission_date DATE,
    is_active BOOLEAN
);
SELECT * FROM Student_Info;
INSERT INTO Student_Info
(student_id, student_name, age, gender, marks, salary, city,
 course, phone, admission_date, is_active)
VALUES
(101, 'Ram', 20, 'Male', 85.50, 25000.00, 'Kathmandu',
 'BCA', '9801234567', '2025-01-15', TRUE),

(102, 'Sita', 21, 'Female', 92.00, 30000.00, 'Pokhara',
 'BBA', '9812345678', '2025-02-10', TRUE),

(103, 'Hari', 19, 'Male', 68.50, 18000.00, 'Lalitpur',
 'BCA', '9823456789', '2025-03-05', TRUE),

(104, 'Gita', 22, 'Female', 75.00, 22000.00, 'Bhaktapur',
 'BIM', NULL, '2025-03-20', TRUE),

(105, 'Bikash', 20, 'Male', 55.50, NULL, 'Chitwan',
 'BCA', '9845678901', '2025-04-12', FALSE),

(106, 'Anita', 23, 'Female', 88.00, 35000.00, 'Kathmandu',
 'BBA', '9856789012', '2025-05-01', TRUE);


DELETE FROM Student_Info;
DELETE FROM Student_Info
WHERE age < 18;

SELECT * FROM Student_Info
WHERE marks>80;

SELECT * FROM Student_Info
WHERE city ='Kathmandu';

SELECT * FROM Student_Info
WHERE marks>80 AND city='Pokhara';

SELECT * FROM Student_Info
WHERE marks>80 OR city='Gaighat';

SELECT * FROM Student_Info
WHERE marks BETWEEN 70 AND 90;

SELECT * FROM Student_Info
WHERE city IN ('Kathmandu','gaighat');

SELECT * FROM Student_Info
WHERE city NOT IN ('gaighat');

SELECT * FROM Student_Info LIMIT 3;

SELECT * FROM Student_Info ORDER BY student_id ASC LIMIT 3;

SELECT * FROM Student_Info
WHERE salary=30000;

SELECT * FROM Student_Info
WHERE salary+5000 = 40000;

SELECT * FROM Student_Info
WHERE salary-5000 = 35000;

CREATE TABLE Product_Employee_Info (
    id INT PRIMARY KEY,
    roll_no INT,
    person_name VARCHAR(100),
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    quantity INT,
    joining_date DATE,
    city VARCHAR(100),
    salary DECIMAL(10,2),
    is_active BOOLEAN
);

SELECT * FROM Product_Employee_Info;
INSERT INTO Product_Employee_Info
(id, roll_no, person_name, product_name, price, quantity,
 joining_date, city, salary, is_active)
VALUES
(101, 1, 'Ram', 'Laptop', 90000.00, 2,
 '2025-01-10', 'Kathmandu', 35000.00, TRUE),

(102, 2, 'Sita', 'Mouse', 1500.00, 5,
 '2025-02-15', 'Pokhara', 30000.00, TRUE),

(103, 3, 'Hari', 'Keyboard', 2500.00, 3,
 '2025-03-20', 'Lalitpur', NULL, TRUE),

(104, 4, 'Gita', 'Monitor', 25000.00, NULL,
 '2025-04-05', 'Bhaktapur', 40000.00, TRUE),

(105, 5, 'Bikash', 'Printer', NULL, 2,
 '2025-05-12', 'Chitwan', 32000.00, FALSE),

(106, 6, 'Anita', 'Headphones', 3500.00, 4,
 NULL, 'Kathmandu', 38000.00, TRUE),

(107, 7, 'Ramesh', 'Tablet', 30000.00, 1,
 '2025-07-18', NULL, 45000.00, TRUE),

(108, 8, 'Sunita', 'Camera', NULL, NULL,
 NULL, 'Pokhara', NULL, FALSE);

SELECT * FROM Product_Employee_Info
WHERE price*quantity>25000;

SELECT * FROM Product_Employee_Info
WHERE salary/2>3500;

SELECT * FROM Product_Employee_Info
WHERE roll_no%4=1;

SELECT * FROM Product_Employee_Info
WHERE person_name='Bikash';


SELECT * FROM Product_Employee_Info
WHERE person_name !='Bikash';

SELECT * FROM Product_Employee_Info
WHERE is_active=TRUE;

SELECT * FROM Product_Employee_Info
WHERE is_active !=TRUE;

SELECT * FROM Product_Employee_Info
WHERE is_active = FALSE;

SELECT * FROM Product_Employee_Info
WHERE joining_date IS NULL;

SELECT * FROM Product_Employee_Info
WHERE joining_date IS NOT NULL;

SELECT * FROM Product_Employee_Info
WHERE person_name='Gita'
AND salary>30000
AND city='Bhaktapur';

SELECT * FROM Product_Employee_Info
WHERE quantity>=1
OR  salary >=35000
OR city='Rolpa';


CREATE TABLE Student_Employee_Info (
    id INT PRIMARY KEY,
    roll_no INT,
    person_name VARCHAR(100),
    email VARCHAR(150),
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    quantity INT,
    joining_date DATE,
    city VARCHAR(100),
    salary DECIMAL(10,2),
    is_active BOOLEAN
);

SELECT * FROM Student_Employee_Info;

INSERT INTO Student_Employee_Info
(id, roll_no, person_name, email, product_name, price, quantity,
 joining_date, city, salary, is_active)
VALUES
(101, 1, 'Ram Sharma', 'ram@gmail.com', 'Laptop', 90000.00, 2,
 '2025-01-10', 'Kathmandu', 35000.00, TRUE),

(102, 2, 'Sita Thapa', 'sita@gmail.com', 'Mouse', 1500.00, 5,
 '2025-02-15', 'Pokhara', 30000.00, TRUE),

(103, 3, 'Hari Gurung', 'hari@gmail.com', 'Keyboard', 2500.00, 3,
 '2025-03-20', 'Lalitpur', NULL, TRUE),

(104, 4, 'Gita Rai', 'gita@yahoo.com', 'Monitor', 25000.00, NULL,
 '2025-04-05', 'Bhaktapur', 40000.00, TRUE),

(105, 5, 'Bikash Karki', 'bikash@gmail.com', 'Printer', NULL, 2,
 '2025-05-12', 'Chitwan', 32000.00, FALSE),

(106, 6, 'Anita Shrestha', 'anita@gmail.com', 'Headphones', 3500.00, 4,
 NULL, 'Kathmandu', 38000.00, TRUE),

(107, 7, 'Ramesh Adhikari', 'ramesh@hotmail.com', 'Tablet', 30000.00, 1,
 '2025-07-18', NULL, 45000.00, TRUE),

(108, 8, 'Sunita KC', 'sunita@gmail.com', 'Camera', NULL, NULL,
 NULL, 'Pokhara', NULL, FALSE),

(109, 9, 'Prakash Lama', 'prakash@gmail.com', 'Laptop Bag', 2500.00, 6,
 '2025-09-10', 'Kathmandu', 28000.00, TRUE),

(110, 10, 'Nisha Tamang', 'nisha@yahoo.com', 'USB Cable', 800.00, 10,
 '2025-10-05', 'Dharan', 27000.00, TRUE);

SELECT * FROM Student_Employee_Info
WHERE person_name LIKE 'R%'; 

SELECT * FROM Student_Employee_Info
WHERE person_name LIKE '%i'; 

SELECT * FROM Student_Employee_Info
WHERE person_name LIKE '%Sh%'; 

SELECT * FROM Student_Employee_Info
WHERE person_name LIKE 'Gi%'; 

SELECT * FROM Student_Employee_Info
WHERE email LIKE '%hotmail.com'; 

SELECT * FROM Student_Employee_Info
WHERE person_name LIKE '_u%';

SELECT * FROM Student_Employee_Info
WHERE person_name LIKE '______';
