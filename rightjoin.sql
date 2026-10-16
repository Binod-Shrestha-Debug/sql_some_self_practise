
-- =====================================
-- SQL RIGHT JOIN Examples
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
(103, 5, 'Java', 80),
(104, 4, 'Python', 75);

-- Example 1: Basic RIGHT JOIN
SELECT Students.name, Marks.subject, Marks.marks
FROM Students
RIGHT JOIN Marks
ON Students.student_id = Marks.student_id;

-- Example 2: RIGHT JOIN with WHERE
SELECT Students.name, Marks.subject, Marks.marks
FROM Students
RIGHT JOIN Marks
ON Students.student_id = Marks.student_id
WHERE Marks.marks > 80;

-- Example 3: RIGHT JOIN with ORDER BY
SELECT Students.name, Marks.subject, Marks.marks
FROM Students
RIGHT JOIN Marks
ON Students.student_id = Marks.student_id
ORDER BY Marks.marks DESC;

-- Example 4: Find marks without a matching student
SELECT Marks.mark_id, Marks.student_id,
       Marks.subject, Marks.marks
FROM Students
RIGHT JOIN Marks
ON Students.student_id = Marks.student_id
WHERE Students.student_id IS NULL;
