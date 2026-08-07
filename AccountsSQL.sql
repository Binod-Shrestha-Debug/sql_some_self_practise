CREATE TABLE accounts(
account_id SERIAL PRIMARY KEY,
customer_id INT,
account_type VARCHAR(255),
balance DECIMAL(10,2),
account_date DATE);
)
SELECT * FROM accounts;