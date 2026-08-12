CREATE TABLE student_employee_infooo(
student_id INT PRIMARY KEY,
person_name VARCHAR(255),
product_name VARCHAR(255),
email VARCHAR(255),
city VARCHAR(255),
price DECIMAL(10,2),
quantity INT,
slary DECIMAL(10,2),
joining_date DATE,
is_active BOOLEAN
);
SELECT * FROM student_employee_infooo;
INSERT INTO student_employee_infooo
(student_id, person_name, product_name, email, city, price, quantity, slary, joining_date, is_active)
VALUES
(1, 'Ram Sharma', 'Laptop', 'ram@gmail.com', 'Kathmandu', 75000.00, 1, 45000.00, '2024-01-15', TRUE),
(2, 'Sita Thapa', 'Mobile', 'sita@gmail.com', 'Pokhara', 35000.00, 2, 40000.00, '2024-03-20', TRUE),
(3, 'Hari Gurung', 'Keyboard', 'hari@gmail.com', NULL, NULL, 3, NULL, NULL, TRUE),
(4, 'Gita Rai', 'Mouse', 'gita@gmail.com', 'Bhaktapur', 1500.00, 2, 30000.00, '2025-02-10', FALSE),
(5, 'Shyam Karki', 'Monitor', 'shyam@gmail.com', 'Biratnagar', 25000.00, 1, 50000.00, NULL, TRUE);

-- PART 1========================================
-- price grater than 20000========
SELECT * FROM student_employee_infooo
WHERE price > 20000;

-- salary less than 30000====
SELECT * FROM student_employee_infooo
WHERE slary < 40000;

-- quantity equal to 5=====
SELECT * FROM student_employee_infooo
WHERE quantity = 3;
 
-- price not equale to 2500====
SELECT * FROM student_employee_infooo
WHERE price <> 2500;

-- salary greater than or equal to 35000=====
SELECT * FROM student_employee_infooo
WHERE slary >= 35000;

-- PART 2==============================================
-- salary > 30000 and person is active==
SELECT * FROM student_employee_infooo
WHERE slary > 30000
AND is_active = TRUE;

-- city is kathmandu or pokhara==========
SELECT * FROM student_employee_infooo
WHERE city = 'Kathmandu'
OR city = 'Pokhara';

-- price > 20000 and quantity > 1=====
SELECT * FROM student_employee_infooo
WHERE price > 20000
AND quantity > 1;

-- salary < 30000 OR price > 50000===
SELECT * FROM student_employee_infooo
WHERE slary < 30000
OR price > 50000;

-- active people whose salary > 30000====
SELECT * FROM student_employee_infooo
WHERE is_active = TRUE
AND slary > 30000;


-- PART 3==========================================
-- names starting with R ====
SELECT * FROM student_employee_infooo
WHERE person_name LIKE 'R%';

SELECT * FROM student_employee_infooo
WHERE person_name LIKE '%a';

SELECT * FROM student_employee_infooo
WHERE person_name LIKE '%ai';

SELECT * FROM student_employee_infooo
WHERE email LIKE '%@gmail.com';

SELECT * FROM student_employee_infooo
WHERE person_name LIKE '_____';


-- PART 4==================================
-- joining_date is null//////////
SELECT * FROM student_employee_infooo
WHERE joining_date IS NULL;

SELECT * FROM student_employee_infooo
WHERE price IS NULL;

SELECT * FROM student_employee_infooo
WHERE slary IS NULL;

SELECT * FROM student_employee_infooo
WHERE city IS NULL;

SELECT * FROM student_employee_infooo
WHERE price IS NOT NULL;


-- PART 5=========================
-- student from kathmandu or pokhara/////
SELECT * FROM student_employee_infooo
WHERE city IN ('Kathmandu', 'Pokhara');

-- price between 2000 and 30000/////
SELECT * FROM student_employee_infooo
WHERE price BETWEEN 2000 AND 40000;

-- salary between 25000 and 50000/////
SELECT * FROM student_employee_infooo
WHERE slary BETWEEN 25000 AND 50000;

-- city in kathmandu pokhara or lalitpur///
SELECT * FROM student_employee_infooo
WHERE city IN ('Kathmandu', 'Pokhara', 'Lalitpur');


-- PART 6==============================================
-- calculate total price////
SELECT price * quantity AS total_amount
FROM student_employee_infooo;

-- display product_name, price, quantity and total_amount///
SELECT product_name, price, quantity, price * quantity AS total_amount
FROM student_employee_infooo;

-- total amount greater than 50000///
SELECT * FROM student_employee_infooo
WHERE price * quantity > 50000;

-- calculate 10% discount///
SELECT product_name, price, price * 0.10 AS discount
FROM student_employee_infooo;

-- calculate price after 10% discount///
SELECT product_name, price - (price * 0.10) AS discounted_price
FROM student_employee_infooo;


-- PART 7============================
-- highest salary to lowest salary///
SELECT * FROM student_employee_infooo ORDER BY slary DESC;

-- cheapest to most expensive///
SELECT * FROM student_employee_infooo ORDER BY price ASC;

-- highest quantity to lowest quantity///
SELECT * FROM student_employee_infooo ORDER BY quantity DESC;

-- display name alphabetically/////
SELECT * FROM student_employee_infooo ORDER BY person_name ASC;




 




