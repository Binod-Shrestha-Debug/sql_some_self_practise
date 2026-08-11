-- ==========================================
-- ONE-TO-MANY RELATIONSHIP
-- Department → Employees
-- ==========================================
CREATE TABLE Department_info(
department_id INT PRIMARY KEY,
department_name VARCHAR(100)
);
SELECT * FROM Department_Info;
INSERT INTO Department_Info
(department_id, department_name)
VALUES
(101, 'IT'),
(102, 'Finance'),
(103, 'HR');

-- ==========================================
-- Child Table
-- ==========================================

CREATE TABLE Employee_Info(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(100),
salary DECIMAL(10,2),
department_id INT,
FOREIGN KEY(department_id)
REFERENCES Department_info(department_id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

SELECT * FROM Employee_Info;
INSERT INTO Employee_Info(employee_id, employee_name,salary,department_id)
VALUES
(201,'Ram',200000,101),
(202,'Sita',300000,101),
(203,'Hari',400000,101),
(204,'Gita',500000,102),
(205,'Ramesh',50000,102),
(206,'Anita',450000,103);

-- ===================================
-- JOIN
-- ===================================
SELECT d.department_id,d.department_name,e.employee_id,e.employee_name,e.salary FROM Department_Info AS D
INNER JOIN Employee_Info AS e
ON d.department_id = e.department_id;