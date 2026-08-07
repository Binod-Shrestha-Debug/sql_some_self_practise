CREATE TABLE book_store(
book_id INT PRIMARY KEY,
book_name VARCHAR(255) NOT NULL,
author_name VARCHAR(255),
category VARCHAR(255),
publisher VARCHAR(255),
price DECIMAL(10,2),
quantity INT,
email VARCHAR(255)
);
SELECT * FROM book_store;
INSERT INTO book_store
(book_id, book_name, author_name, category, publisher, price, quantity, email)
VALUES
('101', 'Database System Concepts', 'Abraham Silberschatz', 'Database', 'McGraw Hill', '850', '15', 'dbconcepts@gmail.com'),
('102', 'Python Crash Course', 'Eric Matthes', 'Programming', 'No Starch Press', '650', '20', 'pythonbooks@yahoo.com'),
('103', 'Learning SQL', 'Alan Beaulieu', 'Database', 'O''Reilly Media', '720', '12', 'learnsql@hotmail.com'),
('104', 'Clean Code', 'Robert C. Martin', 'Software Engineering', 'Prentice Hall', '980', '10', 'cleancode@outlook.com'),
('105', 'Data Science Handbook', 'Jake VanderPlas', 'Data Science', 'O''Reilly Media', '1100', '8', 'datascience@icloud.com'),
('106', 'Power BI Essentials', 'Paul Turley', 'Business Intelligence', 'Packt', '900', '18', 'powerbi@gmail.com'),
('107', 'The Pragmatic Programmer', 'Andrew Hunt', 'Programming', 'Addison-Wesley', '1200', '6', 'pragmatic@yahoo.com');

SELECT * FROM book_store
WHERE book_name LIKE 'D%';

SELECT * FROM book_store
WHERE book_name LIKE '%s';

SELECT * FROM book_store
WHERE book_name LIKE 'Da%';

SELECT * FROM book_store
WHERE book_name LIKE 'Cl%';

SELECT * FROM book_store
WHERE book_name LIKE '%se';

SELECT * FROM book_store
WHERE email LIKE '%yahoo.com';

SELECT * FROM book_store
WHERE email LIKE '%hotmail.com';

SELECT * FROM book_store
WHERE book_name LIKE '_a%';

SELECT * FROM book_store
WHERE book_name LIKE '_____';


