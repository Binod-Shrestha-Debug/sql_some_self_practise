CREATE TABLE employees(
emp_id SERIAL PRIMARY KEY,
emp_name VARCHAR(50),
name_position VARCHAR(50),
name_department VARCHAR(50),
salary NUMERIC(10,2),
hire_date DATE);
)
SELECT * FROM employees;