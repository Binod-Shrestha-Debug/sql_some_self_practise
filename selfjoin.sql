
-- ==========================================
-- SQL SELF JOIN Examples
-- ==========================================

-- Create Employees Table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT
);

-- Insert Employees
INSERT INTO Employees VALUES
(1, 'Ram', NULL),
(2, 'Sita', 1),
(3, 'Hari', 1),
(4, 'Gita', 2),
(5, 'Shyam', 2);

-- Example 1: Basic SELF JOIN
SELECT
    E.employee_name AS Employee,
    M.employee_name AS Manager
FROM Employees AS E
JOIN Employees AS M
ON E.manager_id = M.employee_id;

-- Example 2: Employees and Their Managers
SELECT
    E.employee_id,
    E.employee_name AS Employee,
    M.employee_name AS Manager
FROM Employees AS E
LEFT JOIN Employees AS M
ON E.manager_id = M.employee_id;

-- Example 3: Employees Who Have a Manager
SELECT
    E.employee_name AS Employee,
    M.employee_name AS Manager
FROM Employees AS E
INNER JOIN Employees AS M
ON E.manager_id = M.employee_id
WHERE M.employee_name = 'Ram';

-- Example 4: Find Employees With the Same Manager
SELECT
    E1.employee_name AS Employee1,
    E2.employee_name AS Employee2,
    E1.manager_id
FROM Employees AS E1
JOIN Employees AS E2
ON E1.manager_id = E2.manager_id
AND E1.employee_id < E2.employee_id
WHERE E1.manager_id IS NOT NULL;
