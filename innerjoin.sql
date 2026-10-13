
-- =====================================
-- SQL INNER JOIN Examples
-- =====================================

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
(103, 4, 'Python', 75),
(104, 5, 'Java', 80);

-- Example 1: Basic INNER JOIN
SELECT Students.name, Marks.subject, Marks.marks
FROM Students
INNER JOIN Marks
ON Students.student_id = Marks.student_id;

-- Example 2: INNER JOIN with WHERE
SELECT Students.name, Marks.subject, Marks.marks
FROM Students
INNER JOIN Marks
ON Students.student_id = Marks.student_id
WHERE Marks.marks > 80;

-- Example 3: INNER JOIN with ORDER BY
SELECT Students.name, Marks.subject, Marks.marks
FROM Students
INNER JOIN Marks
ON Students.student_id = Marks.student_id
ORDER BY Marks.marks DESC;

-- Example 4: INNER JOIN with specific subject
SELECT Students.name, Marks.marks
FROM Students
INNER JOIN Marks
ON Students.student_id = Marks.student_id
WHERE Marks.subject = 'Python';

-- Example 5: INNER JOIN with aliases
SELECT S.name, M.subject, M.marks
FROM Students AS S
INNER JOIN Marks AS M
ON S.student_id = M.student_id;
