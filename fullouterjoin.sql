
-- ==========================================
-- SQL FULL OUTER JOIN Examples
-- ==========================================

-- Create Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Create Marks Table
CREATE TABLE Marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    marks INT
);

-- Insert Students
INSERT INTO Students VALUES
(1, 'Ram'),
(2, 'Sita'),
(3, 'Hari'),
(4, 'Gita');

-- Insert Marks
INSERT INTO Marks VALUES
(101, 1, 'Python', 85),
(102, 2, 'SQL', 90),
(103, 5, 'Java', 80),
(104, 4, 'Python', 75);

-- Example 1: Basic FULL OUTER JOIN
SELECT
    Students.student_id,
    Students.name,
    Marks.subject,
    Marks.marks
FROM Students
FULL OUTER JOIN Marks
ON Students.student_id = Marks.student_id;

-- Example 2: FULL OUTER JOIN with ORDER BY
SELECT
    Students.name,
    Marks.subject,
    Marks.marks
FROM Students
FULL OUTER JOIN Marks
ON Students.student_id = Marks.student_id
ORDER BY Students.name;

-- Example 3: Find unmatched records from both tables
SELECT
    Students.student_id,
    Students.name,
    Marks.student_id AS marks_student_id,
    Marks.subject
FROM Students
FULL OUTER JOIN Marks
ON Students.student_id = Marks.student_id
WHERE Students.student_id IS NULL
   OR Marks.student_id IS NULL;
