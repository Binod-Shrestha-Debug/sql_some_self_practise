CREATE TABLE Person(
person_id INT PRIMARY KEY,
person_name VARCHAR(100)
);

SELECT * FROM Person;
INSERT INTO Person(Person_id,Person_name)
VALUES
(101, 'Ram'),
(102, 'Sita'),
(103, 'Hari');

CREATE TABLE Passport(
passport_id INT PRIMARY KEY,
passport_number VARCHAR(100),
person_id INT UNIQUE,
FOREIGN KEY(person_id)
REFERENCES Person(person_id)
ON UPDATE CASCADE
ON DELETE CASCADE
ON DELETE SET NULL
);

SELECT * FROM Passport;
INSERT INTO Passport
VALUES
(201, 'PA123456', 101),
(202, 'PB234567', 102),
(203, 'PC345678', 103);

DELETE FROM Person
WHERE person_id = 102;

UPDATE Person 
SET Person_id = 104
WHERE person_id=103;

DELETE FROM Person
WHERE person_id = 101;


-- ==========================================
-- ONE-TO-ONE RELATIONSHIP
-- ON UPDATE CASCADE
-- ON DELETE SET NULL
-- ==========================================

CREATE TABLE Citizen_Info (
    citizen_id INT PRIMARY KEY,
    citizen_name VARCHAR(100)
);
SELECT * FROM Citizen_Info;
-- Insert parent data
INSERT INTO Citizen_Info
(citizen_id, citizen_name)
VALUES
(101, 'Ram'),
(102, 'Sita'),
(103, 'Hari');


-- ==========================================
-- Child Table
-- ==========================================

CREATE TABLE Identity_Card (
    card_id INT PRIMARY KEY,
    card_number VARCHAR(100),
    citizen_id INT UNIQUE,

    FOREIGN KEY (citizen_id)
    REFERENCES Citizen_Info(citizen_id)
    ON UPDATE SET NULL
    ON DELETE SET NULL
);

SELECT * FROM Identity_Card;
-- Insert child data
INSERT INTO Identity_Card
(card_id, card_number, citizen_id)
VALUES
(201, 'ID123456', 101),
(202, 'ID234567', 102),
(203, 'ID345678', 103);

-- ==========================================
-- ON DELETE SET NULL
-- ==========================================

DELETE FROM Citizen_Info
WHERE citizen_id = 102;

DELETE FROM Identity_Card
WHERE card_id = 201;

UPDATE Citizen_Info
SET citizen_id=107
WHERE citizen_name='Hari';


-- ==========================================
-- ONE-TO-ONE RELATIONSHIP
-- ON UPDATE NO ACTION
-- ON DELETE NO ACTION
-- ==========================================

CREATE TABLE Customer_Info (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

-- Parent data
INSERT INTO Customer_Info
(customer_id, customer_name)
VALUES
(101, 'Ram'),
(102, 'Sita'),
(103, 'Hari');


-- ==========================================
-- Child Table
-- ==========================================

CREATE TABLE Customer_Card (
    card_id INT PRIMARY KEY,
    card_number VARCHAR(100),
    customer_id INT UNIQUE,

    FOREIGN KEY (customer_id)
    REFERENCES Customer_Info(customer_id)
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
);


-- Child data
INSERT INTO Customer_Card
(card_id, card_number, customer_id)
VALUES
(201, 'CARD123', 101),
(202, 'CARD456', 102),
(203, 'CARD789', 103);


-- Check data
SELECT * FROM Customer_Info;
SELECT * FROM Customer_Card;


-- ==========================================
-- DELETE TEST
-- ==========================================

DELETE FROM Customer_Info
WHERE customer_id = 102;


-- ==========================================
-- UPDATE TEST
-- ==========================================

UPDATE Customer_Info
SET customer_id = 104
WHERE customer_id = 103;

