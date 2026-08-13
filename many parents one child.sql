-- ==========================================
-- PARENT TABLE 1: COLLEGE
-- ==========================================

CREATE TABLE College (
    college_id INT PRIMARY KEY,
    college_name VARCHAR(100)
);

INSERT INTO College
VALUES
(101, 'ABC College'),
(102, 'XYZ College'),
(103, 'City College');


-- ==========================================
-- PARENT TABLE 2: COURSE
-- ==========================================

CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100)
);

INSERT INTO Course
VALUES
(201, 'BCA'),
(202, 'BBA'),
(203, 'BIM');


-- ==========================================
-- PARENT TABLE 3: INSTRUCTOR
-- ==========================================

CREATE TABLE Instructor (
    instructor_id INT PRIMARY KEY,
    instructor_name VARCHAR(100)
);

INSERT INTO Instructor
VALUES
(301, 'Ram Sir'),
(302, 'Hari Sir'),
(303, 'Sita Maam');


-- ==========================================
-- CHILD TABLE: LEARNER
-- ==========================================

CREATE TABLE Learner (
    learner_id INT PRIMARY KEY,
    learner_name VARCHAR(100),

    college_id INT,
    course_id INT,
    instructor_id INT,

    FOREIGN KEY (college_id)
    REFERENCES College(college_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,

    FOREIGN KEY (course_id)
    REFERENCES Course(course_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,

    FOREIGN KEY (instructor_id)
    REFERENCES Instructor(instructor_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);


-- ==========================================
-- INSERT CHILD DATA
-- ==========================================

INSERT INTO Learner
VALUES
(1, 'Sita', 101, 201, 301),
(2, 'Gita', 102, 202, 302),
(3, 'Hari', 103, 203, 303),
(4, 'Ram', 101, 201, 302);


-- ==========================================
-- SELECT
-- ==========================================

SELECT * FROM College;
SELECT * FROM Course;
SELECT * FROM Instructor;
SELECT * FROM Learner;


-- ==========================================
-- UPDATE CASCADE
-- ==========================================

UPDATE College
SET college_id = 105
WHERE college_id = 101;

SELECT * FROM College;
SELECT * FROM Learner;


-- ==========================================
-- DELETE CASCADE
-- ==========================================

DELETE FROM Course
WHERE course_id = 201;

SELECT * FROM Course;
SELECT * FROM Learner;


-- ==========================================
-- JOIN
-- ==========================================

SELECT
    l.learner_id,
    l.learner_name,
    c.college_name,
    co.course_name,
    i.instructor_name
FROM Learner AS l
INNER JOIN College AS c
    ON l.college_id = c.college_id
	
INNER JOIN Course AS co
    ON l.course_id = co.course_id
INNER JOIN Instructor AS i
    ON l.instructor_id = i.instructor_id;


-- ==================================================================================================================================================================
-- ==========================================
-- PARENT TABLE 1: COMPANY
-- ==========================================

CREATE TABLE Company (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(100)
);

INSERT INTO Company
VALUES
(101, 'TechSoft'),
(102, 'GlobalTech'),
(103, 'NextGen');


-- ==========================================
-- PARENT TABLE 2: BRANCH
-- ==========================================

CREATE TABLE Branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100)
);

INSERT INTO Branch
VALUES
(201, 'Kathmandu'),
(202, 'Pokhara'),
(203, 'Lalitpur');


-- ==========================================
-- PARENT TABLE 3: MANAGER
-- ==========================================

CREATE TABLE Manager (
    manager_id INT PRIMARY KEY,
    manager_name VARCHAR(100)
);

INSERT INTO Manager
VALUES
(301, 'Ramesh'),
(302, 'Suresh'),
(303, 'Bikash');


-- ==========================================
-- CHILD TABLE: EMPLOYEE
-- ==========================================

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),

    company_id INT,
    branch_id INT,
    manager_id INT,

    FOREIGN KEY (company_id)
    REFERENCES Company(company_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,

    FOREIGN KEY (branch_id)
    REFERENCES Branch(branch_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,

    FOREIGN KEY (manager_id)
    REFERENCES Manager(manager_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);


-- ==========================================
-- INSERT CHILD DATA
-- ==========================================

INSERT INTO Employee
VALUES
(1, 'Asha', 101, 201, 301),
(2, 'Mina', 102, 202, 302),
(3, 'Kiran', 103, 203, 303),
(4, 'Suman', 101, 201, 302);


-- ==========================================
-- SELECT
-- ==========================================

SELECT * FROM Company;
SELECT * FROM Branch;
SELECT * FROM Manager;
SELECT * FROM Employee;


-- ==========================================
-- UPDATE CASCADE
-- ==========================================

UPDATE Company
SET company_id = 105
WHERE company_id = 101;

SELECT * FROM Company;
SELECT * FROM Employee;


-- ==========================================
-- DELETE CASCADE
-- ==========================================

DELETE FROM Employee
WHERE employee_id = 1;

DELETE FROM Company
WHERE company_id = 103;

SELECT * FROM Branch;
SELECT * FROM Employee;


-- ==========================================
-- JOIN ALL TABLES
-- ==========================================

SELECT
    e.employee_id,
    e.employee_name,
    c.company_name,
    b.branch_name,
    m.manager_name
FROM Employee AS e

INNER JOIN Company AS c
    ON e.company_id = c.company_id

INNER JOIN Branch AS b
    ON e.branch_id = b.branch_id

INNER JOIN Manager AS m
    ON e.manager_id = m.manager_id;