CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
SELECT * FROM Department;
INSERT INTO Department
VALUES
(101, 'IT'),
(102, 'Finance'),
(103, 'HR');

DELETE FROM Department
WHERE  department_id=102;

UPDATE Department
SET department_id=105
WHERE department_id=101;
 
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,

    FOREIGN KEY (department_id)
    REFERENCES Department(department_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);
SELECT * FROM Employee;
INSERT INTO Employee
VALUES
(201, 'Ram', 101),
(202, 'Sita', 101),
(203, 'Hari', 102);

UPDATE Employee
SET employee_id=205
WHERE employee_id=202;

DELETE FROM Employee
WHERE  employee_id=201;

SELECT *
FROM Department AS d
INNER JOIN Employee AS e
ON d.department_id = e.department_id;

-- ==========================================================================================================================================
--  set null

CREATE TABLE Company_Info (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(100)
);
SELECT * FROM Company_Info;
INSERT INTO Company_Info
VALUES
(101, 'ABC Company'),
(102, 'XYZ Company'),
(103, 'PQR Company');


CREATE TABLE Staff_Info (
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(100),
    company_id INT,

    FOREIGN KEY (company_id)
    REFERENCES Company_Info(company_id)
    ON UPDATE SET NULL
    ON DELETE SET NULL
);
SELECT * FROM Staff_Info;
INSERT INTO Staff_Info
VALUES
(201, 'Ram', 101),
(202, 'Sita', 101),
(203, 'Hari', 102);


-- Test UPDATE SET NULL
UPDATE Company_Info
SET company_id = 105
WHERE company_id = 101;


-- Test DELETE SET NULL
DELETE FROM Company_Info
WHERE company_id = 102;


-- JOIN
SELECT *
FROM Company_Info AS c
INNER JOIN Staff_Info AS s
ON c.company_id = s.company_id;



-- ======================================================================================
-- no action
CREATE TABLE Hospital_Info (
    hospital_id INT PRIMARY KEY,
    hospital_name VARCHAR(100)
);

INSERT INTO Hospital_Info
VALUES
(101, 'City Hospital'),
(102, 'Central Hospital'),
(103, 'Metro Hospital');


CREATE TABLE Patient_Info (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(100),
    hospital_id INT,

    FOREIGN KEY (hospital_id)
    REFERENCES Hospital_Info(hospital_id)
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
);

INSERT INTO Patient_Info
VALUES
(201, 'Ram', 101),
(202, 'Sita', 101),
(203, 'Hari', 102);


-- Display data

SELECT * FROM Hospital_Info;

SELECT * FROM Patient_Info;


-- UPDATE TEST

UPDATE Hospital_Info
SET hospital_id = 105
WHERE hospital_id = 101;


-- DELETE TEST

DELETE FROM Hospital_Info
WHERE hospital_id = 102;


-- JOIN

SELECT *
FROM Hospital_Info AS h
INNER JOIN Patient_Info AS p
ON h.hospital_id = p.hospital_id;