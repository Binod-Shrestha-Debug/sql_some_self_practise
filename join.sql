CREATE TABLE Students (
    student_id INT,
    student_name VARCHAR(50),
    city VARCHAR(50)
);
SELECT * FROM Students;
INSERT INTO Students(student_id,student_name,city)
VALUES
(1, 'Ram', 'Kathmandu'),
(2, 'Sita', 'Pokhara'),
(3, 'Hari', 'Butwal'),
(4, 'Gita', 'Biratnagar');

CREATE TABLE Courses (
    course_id INT,
    student_id INT,
    course_name VARCHAR(50),
    instructor_name VARCHAR(50),
    duration_months INT,
    fee DECIMAL(10,2),
    start_date DATE,
    course_level VARCHAR(20)
);
SELECT * FROM Courses;
INSERT INTO Courses
(course_id, student_id, course_name, instructor_name, duration_months, fee, start_date, course_level)
VALUES
(101, 1, 'SQL', 'John', 2, 15000.00, '2026-01-10', 'Beginner'),
(102, 2, 'Python', 'David', 3, 20000.00, '2026-02-15', 'Intermediate'),
(103, 4, 'Java', 'Smith', 4, 25000.00, '2026-03-20', 'Advanced'),
(104, 5, 'Power BI', 'Michael', 2, 18000.00, '2026-04-05', 'Beginner'),
(105, 2, 'Excel', 'Sarah', 1, 10000.00, '2026-05-12', 'Beginner'),
(106, 1, 'PostgreSQL', 'Robert', 3, 22000.00, '2026-06-18', 'Intermediate'),
(107, 6, 'C++', 'James', 4, 26000.00, '2026-07-01', 'Advanced');

SELECT * FROM Students AS s
INNER JOIN Courses AS c
ON s.student_id = c.student_id;

SELECT * FROM Students AS s
LEFT JOIN Courses AS c
ON s.student_id = c.student_id;

SELECT * FROM Students AS s
RIGHT JOIN Courses AS c
ON s.student_id = c.student_id;

SELECT * FROM Students AS s
FULL OUTER JOIN Courses AS c
ON s.student_id = c.student_id;

SELECT * FROM Students AS s
CROSS JOIN Courses AS c
ON s.student_id = c.student_id;

SELECT * FROM Students AS s
SELF JOIN Courses AS c
ON s.student_id = c.student_id;