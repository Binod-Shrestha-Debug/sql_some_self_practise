CREATE TABLE Employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    emp_age INT,
    emp_gender VARCHAR(10),
    emp_department VARCHAR(50),
    emp_designation VARCHAR(50),
    emp_salary DECIMAL(10,2),
    emp_phone VARCHAR(15),
    emp_email VARCHAR(100),
    emp_address VARCHAR(100),
    emp_joiningdate DATE,
    is_active BOOLEAN
);
SELECT * FROM Employees;
INSERT INTO Employees
(emp_name, emp_age, emp_gender, emp_department, emp_designation, emp_salary, emp_phone, emp_email, emp_address, emp_joiningdate, is_active)
VALUES
('Aarav Sharma', 28, 'Male', 'IT', 'Software Developer', 65000.00, '9801111111', 'aarav@gmail.com', 'Kathmandu', '2024-01-15', TRUE),
('Priya Karki', 30, 'Female', 'HR', 'HR Manager', 70000.00, '9802222222', 'priya@gmail.com', 'Pokhara', '2023-06-10', TRUE),
('Rohan Thapa', 26, 'Male', 'Finance', 'Accountant', 55000.00, '9803333333', 'rohan@gmail.com', 'Biratnagar', '2024-03-20', TRUE),
('Anjali Rai', 29, 'Female', 'Marketing', 'Marketing Executive', 60000.00, '9804444444', 'anjali@gmail.com', 'Lalitpur', '2022-11-05', FALSE),
('Suman Shrestha', 32, 'Male', 'Sales', 'Sales Manager', 75000.00, '9805555555', 'suman@gmail.com', 'Bhaktapur', '2021-08-12', TRUE);

