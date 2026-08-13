
CREATE TABLE School_Info (
    school_id INT PRIMARY KEY,
    school_name VARCHAR(100)
);
SELECT * FROM School_Info;
INSERT INTO School_Info(school_id, school_name)
VALUES
(101, 'Sunrise School'),
(102, 'Everest School');

-- Parent Table 2==========================
CREATE TABLE Course_Info (
course_id INT PRIMARY KEY,
course_name VARCHAR(100)
);
SELECT * FROM Course_Info;
INSERT INTO Course_Info(course_id, course_name)
VALUES
(201, 'BCA'),
(202, 'BBA');


-- Parent Table 3===================================
CREATE TABLE Teacher_Info (
teacher_id INT PRIMARY KEY,
teacher_name VARCHAR(100)
);
SELECT * FROM Teacher_Info;
INSERT INTO Teacher_Info(teacher_id, teacher_name)
VALUES
(301, 'Ram'),
(302, 'Sita');


-- One Child Table
CREATE TABLE Student_Info (
student_id INT PRIMARY KEY,
student_name VARCHAR(100),
school_id INT,
course_id INT,
teacher_id INT,

FOREIGN KEY (school_id)
REFERENCES School_Info(school_id)
ON UPDATE CASCADE
ON DELETE CASCADE,

FOREIGN KEY (course_id)
REFERENCES Course_Info(course_id)
ON UPDATE CASCADE
ON DELETE CASCADE,

FOREIGN KEY (teacher_id)
REFERENCES Teacher_Info(teacher_id)
ON UPDATE CASCADE
ON DELETE CASCADE
);
SELECT * FROM Student_info;
INSERT INTO Student_Info(student_id, student_name, school_id, course_id, teacher_id)
VALUES
(401, 'Hari', 101, 201, 301),
(402, 'Gita', 101, 202, 302),
(403, 'Ramesh', 102, 201, 301);


-- UPDATE CASCADE
UPDATE School_Info
SET school_id = 105
WHERE school_id = 101;

-- DELETE CASCADE
DELETE FROM Course_Info
WHERE course_id = 202;

SELECT * FROM School_Info;
SELECT * FROM Course_Info;
SELECT * FROM Student_info;

SELECT * FROM Student_Info AS s
JOIN School_Info AS sc
ON s.school_id = sc.school_id
JOIN Course_Info AS c
ON s.course_id = c.course_id
JOIN Teacher_Info AS t
ON s.teacher_id = t.teacher_id;

--  SET NULL====================================================================================================================
-- parent table 1=======
CREATE TABLE Hospital_Info (
hospital_id INT PRIMARY KEY,
hospital_name VARCHAR(100)
);
SELECT * FROM Hospital_Info;
INSERT INTO Hospital_Info(hospital_id, hospital_name)
VALUES
(101, 'City Hospital'),
(102, 'Central Hospital');

-- parent table 2===============
CREATE TABLE Doctor_Info(
doctor_id INT PRIMARY KEY,
doctor_name VARCHAR(100)
);
SELECT * FROM Doctor_Info;
INSERT INTO Doctor_Info(doctor_id, doctor_name)
VALUES
(201, 'Dr. Ram'),
(202, 'Dr. Sita');

-- CHILD TABLE=====================
CREATE TABLE Patient_Info (
patient_id INT PRIMARY KEY,
patient_name VARCHAR(100),
hospital_id INT,
doctor_id INT,

FOREIGN KEY (hospital_id)
REFERENCES Hospital_Info(hospital_id)
ON UPDATE SET NULL
ON DELETE SET NULL,

FOREIGN KEY (doctor_id)
REFERENCES Doctor_Info(doctor_id)
ON UPDATE SET NULL
ON DELETE SET NULL
);
SELECT * FROM Patient_Info;
INSERT INTO Patient_Info VALUES
(301, 'Amit', 101, 201),
(302, 'Sita', 101, 202),
(303, 'Hari', 102, 201);

-- Test UPDATE SET NULL======
UPDATE Hospital_Info
SET hospital_id = 105
WHERE hospital_id = 101;

-- Test DELETE SET NULL======
DELETE FROM Doctor_Info
WHERE doctor_id = 201;

SELECT * FROM Patient_Info;
SELECT * FROM Hospital_Info;
SELECT * FROM Doctor_Info;

SELECT * FROM Patient_Info p
LEFT JOIN Hospital_Info h
ON p.hospital_id = h.hospital_id
LEFT JOIN Doctor_Info d
ON p.doctor_id = d.doctor_id;

-- =======================================NO ACTION
-- Parent Table 1
CREATE TABLE Bank_Info (
bank_id INT PRIMARY KEY,
bank_name VARCHAR(100)
);
SELECT * FROM Bank_Info;
INSERT INTO Bank_Info(bank_id, bank_name)
VALUES
(101, 'ABC Bank'),
(102, 'XYZ Bank');

-- Parent Table 2
CREATE TABLE Branch_Info (
branch_id INT PRIMARY KEY,
branch_name VARCHAR(100)
);
SELECT * FROM Branch_Info;
INSERT INTO Branch_Info(branch_id, branch_name)
VALUES
(201, 'Kathmandu Branch'),
(202, 'Pokhara Branch');


-- One Child Table
CREATE TABLE Account_Info (
account_id INT PRIMARY KEY,
account_holder VARCHAR(100),
bank_id INT,
branch_id INT,

FOREIGN KEY (bank_id)
REFERENCES Bank_Info(bank_id)
ON UPDATE NO ACTION
ON DELETE NO ACTION,

FOREIGN KEY (branch_id)
REFERENCES Branch_Info(branch_id)
ON UPDATE NO ACTION
ON DELETE NO ACTION
);
SELECT * FROM Account_Info;
INSERT INTO Account_Info VALUES
(301, 'Ram', 101, 201),
(302, 'Sita', 101, 202),
(303, 'Hari', 102, 201);

UPDATE Bank_Info
SET bank_id = 105
WHERE bank_id = 101;

DELETE FROM Bank_Info
WHERE bank_id = 102;

SELECT * FROM Account_Info AS a
JOIN Bank_Info AS b
ON a.bank_id = b.bank_id
JOIN Branch_Info AS br
ON a.branch_id = br.branch_id;