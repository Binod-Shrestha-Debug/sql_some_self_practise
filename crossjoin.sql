
-- ==========================================
-- SQL CROSS JOIN Examples
-- ==========================================

-- Create Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Create Courses Table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

-- Insert Students
INSERT INTO Students VALUES
(1, 'Ram'),
(2, 'Sita'),
(3, 'Hari');

-- Insert Courses
INSERT INTO Courses VALUES
(101, 'Python'),
(102, 'SQL'),
(103, 'Django');

-- Example 1: Basic CROSS JOIN
SELECT
    Students.name,
    Courses.course_name
FROM Students
CROSS JOIN Courses;

-- Example 2: CROSS JOIN with ORDER BY
SELECT
    Students.name,
    Courses.course_name
FROM Students
CROSS JOIN Courses
ORDER BY Students.name;

-- Example 3: CROSS JOIN with WHERE
SELECT
    Students.name,
    Courses.course_name
FROM Students
CROSS JOIN Courses
WHERE Students.name = 'Ram';

-- Example 4: Count All Combinations
SELECT COUNT(*) AS total_combinations
FROM Students
CROSS JOIN Courses;
