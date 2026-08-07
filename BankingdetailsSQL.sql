CREATE TABLE banking_details5 (
bank_id INT PRIMARY KEY,
bank_name VARCHAR(255) NOT NULL,
age INT,
branch_name VARCHAR(255),
branch_code VARCHAR(255) UNIQUE,
ifsc_swift_code VARCHAR(255) UNIQUE,
customer_name VARCHAR(255),
account_holder_name VARCHAR(255),
account_number VARCHAR(255),
account_type VARCHAR(255),
customer_id VARCHAR(255) UNIQUE,
citizenship_no VARCHAR(255) UNIQUE,
phone VARCHAR(255),
email VARCHAR(255) UNIQUE,
address VARCHAR(255),
city VARCHAR(255),
province VARCHAR(255),
country VARCHAR(255),
balance DECIMAL(10,2) CHECK (balance>20000),
loan_amount DECIMAL(10,2),
interest_rate DECIMAL(10,2),
transaction_type VARCHAR(255),
payment_method VARCHAR(255),
atm_card_number VARCHAR(255) UNIQUE,
card_type VARCHAR(255),
cheque_book_no VARCHAR(255),
nominee_name VARCHAR(255),
nominee_relation VARCHAR(255),
account_open_date DATE,
last_transaction_date DATE,
transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
is_active BOOLEAN 
);
SELECT * FROM banking_details5;
INSERT INTO banking_details1
(bank_id,bank_name,branch_name,branch_code,ifsc_swift_code,customer_name,account_holder_name,account_number,account_type,customer_id,citizenship_no,phone,email,address,city,province,country,balance,loan_amount,interest_rate,transaction_type,payment_method,atm_card_number,card_type,cheque_book_no,nominee_name,nominee_relation,account_open_date,last_transaction_date,is_active)
VALUES
(101,'Nabil Bank','Kathmandu','NB001','NABILNPKTM001','sandhya oli','sandhya oli','100100001','Savings','C001','CTZ001','98162637995','sandhya@gmail.com','Baneshwor','Kathmandu','Bagmati','Nepal',50000.00,200000.00,9.50,'Deposit','Cash','4111111111111111','Debit','CHQ001','prakriti oli','sister','2023-01-15','2026-07-20',TRUE),
(102,'Global IME Bank','Pokhara','GB002','GLOBALNPPKR002','sunita oli','sunita oli','100100002','Current','C002','CTZ002','9851080438','sunita@gmail.com','Lakeside','Pokhara','Gandaki','Nepal',75000.00,500000.00,10.00,'Withdrawal','ATM','4222222222222222','Debit','CHQ002','Gita oli','sister','2022-06-10','2026-07-18',FALSE),
(103,'NIC Asia Bank','Biratnagar','NIC003','NICASNPBRT003','deepak oli','deepak oli','100100003','Savings','C003','CTZ003','9840573245','deepak@gmail.com','Main Road','Biratnagar','Koshi','Nepal',120000.00,0.00,0.00,'Transfer','Mobile Banking','4333333333333333','Debit','CHQ003','pabitra magar','wife','2021-05-20','2026-07-15',TRUE);

INSERT INTO banking_details5
(bank_id,bank_name,branch_name,branch_code, age,ifsc_swift_code,customer_name,account_holder_name,account_number,account_type,customer_id,citizenship_no,phone,email,address,city,province,country,balance,loan_amount,interest_rate,transaction_type,payment_method,atm_card_number,card_type,cheque_book_no,nominee_name,nominee_relation,account_open_date,last_transaction_date,is_active)
VALUES
(101,'Nabil Bank','Kathmandu','NB001',20,'NABILNPKTM001','sandhya oli','sandhya oli','100100001','Savings','C001','CTZ001','98162637995','sandhya@gmail.com','Baneshwor','Kathmandu','Bagmati','Nepal',50000.00,200000.00,9.50,'Deposit','Cash','4111111111111111','Debit','CHQ001','prakriti oli','sister','2023-01-15','2026-07-20',TRUE),
(102,'Global IME Bank','Pokhara','GB002',22,'GLOBALNPPKR002','sunita oli','sunita oli','100100002','Current','C002','CTZ002','9851080438','sunita@gmail.com','Lakeside','Pokhara','Gandaki','Nepal',75000.00,500000.00,10.00,'Withdrawal','ATM','4222222222222222','Debit','CHQ002','Gita oli','sister','2022-06-10','2026-07-18',FALSE),
(103,'NIC Asia Bank','Biratnagar','NIC003',23,'NICASNPBRT003','deepak oli','deepak oli','100100003','Savings','C003','CTZ003','9840573245','deepak@gmail.com','Main Road','Biratnagar','Koshi','Nepal',120000.00,0.00,0.00,'Transfer','Mobile Banking','4333333333333333','Debit','CHQ003','pabitra magar','wife','2021-05-20','2026-07-15',TRUE);


DELETE FROM banking_details3
WHERE age>18;
