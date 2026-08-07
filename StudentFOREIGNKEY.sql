CREATE TABLE students(
student_id INT PRIMARY KEY,
student_name VARCHAR(255),
student_age INT
);
SELECT * FROM students;
INSERT INTO students
(student_id, student_name, student_age)
VALUES
(101, 'sandhya oli', 19),
(102, 'prakriti oli', 21),
(103, 'nisana oli', 23),
(104, 'sunita oli', 24);

CREATE TABLE enrollments (
enrollment_id INT PRIMARY KEY,
student_id INT,
FOREIGN KEY (student_id)
REFERENCES students(student_id)
);
SELECT * FROM enrollments;
INSERT INTO enrollments (enrollment_id, student_id)
VALUES
(1, 101),
(2, 102),
(3, 103),
(4, 104),
(5, 101),
(6, 103);

SELECT * FROM students AS s
INNER JOIN enrollments AS e
ON s.student_id = e.student_id;