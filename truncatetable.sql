CREATE TABLE Books(
book_id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
autho VARCHAR(255),
category VARCHAR(255),
publisher VARCHAR(255),
language VARCHAR(255),
publish_year INT,
price DECIMAL(10,2),
quantity INT,
is_available BOOLEAN
);
SELECT * FROM Books;
INSERT INTO Books
(title,author,category,publisher,language,publish_year,price,quantity,is_available)
VALUES
('The Alchemist', 'Paulo Coelho', 'Novel', 'HarperCollins', 'English', 1988, 850.00, 12, TRUE),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 'Plata Publishing', 'English', 1997, 950.00, 10, TRUE),
('Atomic Habits', 'James Clear', 'Self Help', 'Avery', 'English', 2018, 1200.00, 8, TRUE),
('Think and Grow Rich', 'Napoleon Hill', 'Motivation', 'The Ralston Society', 'English', 1937, 700.00, 15, TRUE),
('Ikigai', 'Hector Garcia', 'Lifestyle', 'Penguin', 'English', 2016, 990.00, 9, TRUE);
ALTER TABLE Books
RENAME COLUMN autho TO author;
TRUNCATE TABLE Books;
TRUNCATE TABLE  Books RESTART IDENTITY;