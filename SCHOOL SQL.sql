
CREATE TABLE School_Info (
school_id INT PRIMARY KEY,
school_name VARCHAR(100)
);
SELECT * FROM School_Info;
INSERT INTO School_Info
VALUES
(101, 'Sunrise School'),
(102, 'Everest School'),
(103, 'Himalayan School');



-- CHILD TABLE
CREATE TABLE Student_Info (
student_id INT PRIMARY KEY,
student_name VARCHAR(100),
school_id INT,
FOREIGN KEY (school_id)
REFERENCES School_Info(school_id)
ON UPDATE CASCADE
ON DELETE CASCADE
);
SELECT * FROM Student_Info;
INSERT INTO Student_Info
VALUES
(201, 'Ram', 101),
(202, 'Sita', 101),
(203, 'Hari', 102),
(204, 'Gita', 102),
(205, 'Ramesh', 103);

UPDATE School_Info
SET school_id = 105
WHERE school_id = 101;

DELETE FROM School_Info
WHERE school_id = 102;

SELECT * FROM School_Info AS s
INNER JOIN Student_Info AS st
ON s.school_id = st.school_id;


-- set null==================================
CREATE TABLE Hospital_Info (
hospital_id INT PRIMARY KEY,
hospital_name VARCHAR(100)
);
SELECT * FROM Hospital_Info;
INSERT INTO Hospital_Info
VALUES
(101, 'City Hospital'),
(102, 'Central Hospital'),
(103, 'Metro Hospital');

-- CHILD TABLE
CREATE TABLE Patient_Info (
patient_id INT PRIMARY KEY,
patient_name VARCHAR(100),
hospital_id INT,
FOREIGN KEY (hospital_id)
REFERENCES Hospital_Info(hospital_id)
ON UPDATE SET NULL
ON DELETE SET NULL
);
SELECT * FROM Patient_Info;
INSERT INTO Patient_Info
VALUES
(201, 'Ram', 101),
(202, 'Sita', 101),
(203, 'Hari', 102);

UPDATE Hospital_Info
SET hospital_id = 105
WHERE hospital_id = 101;

DELETE FROM Hospital_Info
WHERE hospital_id = 102;

-- No action =====================================
CREATE TABLE Library_Info (
    library_id INT PRIMARY KEY,
    library_name VARCHAR(100)
);
SELECT * FROM Library_Info;
INSERT INTO Library_Info (library_id, library_name)
VALUES
(101, 'Central Library'),
(102, 'City Library'),
(103, 'Public Library');

-- CHILD TABLE
CREATE TABLE Book_Info (
book_id INT PRIMARY KEY,
book_name VARCHAR(100),
library_id INT,
FOREIGN KEY (library_id)
REFERENCES Library_Info(library_id)
ON UPDATE NO ACTION
ON DELETE NO ACTION
);
SELECT * FROM Book_Info;
INSERT INTO Book_Info (book_id, book_name, library_id)
VALUES
(201, 'Python Basics', 101),
(202, 'SQL Guide', 101),
(203, 'Power BI', 102);

UPDATE Library_Info
SET library_id = 105
WHERE library_id = 101;

DELETE FROM Library_Info
WHERE library_id = 102;

