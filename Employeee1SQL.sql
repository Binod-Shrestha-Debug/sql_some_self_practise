CREATE TABLE Employee_Practice1 (
employee_id INT PRIMARY KEY,
employee_name VARCHAR(255) NOT NULL,
age INT,
gender VARCHAR(255),
city VARCHAR(255),
department VARCHAR(255),
salary DECIMAL(10,2),
product_name VARCHAR(255),
quantity INT,
price DECIMAL(10,2),
joining_date DATE,
is_active BOOLEAN
);
SELECT * FROM Employee_Practice1;
INSERT INTO Employee_Practice1
(employee_id, employee_name, age, gender, city, department, salary, product_name, quantity, price, joining_date, is_active)
VALUES
(101, 'deepak oli', 25, 'Male', 'Kathmandu', 'IT', 47000.00, 'Laptop', 2, 86000.00, '2023-01-15', TRUE),
(102, 'sandhya oli', 30, 'Female', 'Pokhara', 'Finance', 60000.00, 'Keyboard', 9, 3000.00, '2022-05-20', TRUE),
(103, 'laxman bhandari', 35, 'Male', 'Biratnagar', 'HR', 65000.00, 'Mouse', 13, 1500.00, '2021-08-10', TRUE),
(104, 'prakriti oli', 28, 'Female', 'Lalitpur', 'Marketing', 40000.00, 'Monitor', 4, 18000.00, '2024-02-12', FALSE),
(105, 'chudamani oli', 24, 'Male', 'Kathmandu', 'IT', 50000.00, 'Printer', 3, 25000.00, '2024-06-01', TRUE),
(106, 'nisana oli', 32, 'Female', 'Chitwan', 'Sales', 48000.00, 'Scanner', 2, 22000.00, '2022-09-18', TRUE),
(107, 'sunita oli', 40, 'Female', 'Dang', 'Management', 70000.00, 'Projector', 1, 70000.00, '2020-03-25', FALSE);

SELECT * FROM Employee_Practice1
WHERE salary=50000;

SELECT * FROM Employee_Practice1
WHERE salary+5000>60000;

SELECT * FROM Employee_Practice1
WHERE salary-5000>40000;

SELECT * FROM Employee_Practice1
WHERE price*quantity>75000;

SELECT * FROM Employee_Practice1
WHERE salary/2>25000;

SELECT * FROM Employee_Practice1
WHERE salary% 3 =2;

SELECT * FROM Employee_Practice1
WHERE employee_name='laxman bhandari';

SELECT * FROM Employee_Practice1
WHERE salary!=50000;

SELECT * FROM Employee_Practice1
WHERE employee_name!='laxman bhandari';


SELECT * FROM Employee_Practice1
WHERE age>25;

SELECT * FROM Employee_Practice1
WHERE city>'kathmandu';

SELECT * FROM Employee_Practice1
WHERE age=35;

SELECT * FROM Employee_Practice1
WHERE city='pokhara';

SELECT * FROM Employee_Practice1
WHERE age BETWEEN 25 AND 55;

SELECT * FROM Employee_Practice1
WHERE salary BETWEEN 40000 AND 60000;

SELECT * FROM Employee_Practice1
WHERE department IN ('IT', 'HR');

SELECT * FROM Employee_Practice1
WHERE city NOT IN ('dang', 'chitwan');

SELECT * FROM Employee_Practice1
WHERE city IN ('pokhara', 'kathmandu', 'lalitpur');

SELECT * FROM Employee_Practice1 ORDER BY salary ASC;
SELECT * FROM Employee_Practice1 ORDER BY salary DESC;
SELECT * FROM Employee_Practice1 ORDER BY employee_id ASC;


SELECT * FROM Employee_Practice1 LIMIT 3;

SELECT * FROM Employee_Practice1 ORDER BY salary DESC
LIMIT 5;

SELECT * FROM Employee_Practice1
WHERE quantity*price>40000;

SELECT * FROM Employee_Practice1 ORDER BY salary DESC
LIMIT 2;