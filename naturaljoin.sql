
-- ==========================================
-- SQL NATURAL JOIN Examples
-- ==========================================

-- Create Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT
);

-- Create Departments Table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert Students
INSERT INTO Students VALUES
(1, 'Ram', 101),
(2, 'Sita', 102),
(3, 'Hari', 101),
(4, 'Gita', 103);

-- Insert Departments
INSERT INTO Departments VALUES
(101, 'Computer Science'),
(102, 'Management'),
(104, 'Information Technology');

-- Example 1: Basic NATURAL JOIN
SELECT *
FROM Students
NATURAL JOIN Departments;

-- Example 2: Select Specific Columns
SELECT
    student_id,
    name,
    department_name
FROM Students
NATURAL JOIN Departments;

-- Example 3: NATURAL JOIN with ORDER BY
SELECT
    name,
    department_name
FROM Students
NATURAL JOIN Departments
ORDER BY name;
