-- One-to-Many Relationship in SQL
-- Example: One department has many employees

-- Create Department table (Parent table)
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Create Employee table (Child table)
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id)
);

-- Insert data into Departments
INSERT INTO Departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

-- Insert data into Employees
INSERT INTO Employees VALUES
(101, 'Ram', 1),
(102, 'Sita', 1),
(103, 'Hari', 2),
(104, 'Gita', 2),
(105, 'Shyam', 3);

-- Display all departments
SELECT * FROM Departments;

-- Display all employees
SELECT * FROM Employees;

-- Show departments with their employees
SELECT
    Departments.department_name,
    Employees.employee_name
FROM Departments
INNER JOIN Employees
    ON Departments.department_id = Employees.department_id;