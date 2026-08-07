CREATE TABLE Insurance_details(
policy_id SERIAL PRIMARY KEY,
customer_name VARCHAR(255) NOT NULL,
gender VARCHAR(255),
dob DATE,
phone VARCHAR(255),
email VARCHAR(255),
address VARCHAR(255),
city VARCHAR(255),
province VARCHAR(255),
policy_number VARCHAR(255),
policy_type VARCHAR(255),
coverage_amount DECIMAL(10,2),
premimum_amount DECIMAL(10,2),
policy_start_date DATE,
policy_end_date DATE,
insurance_company VARCHAR(255),
agent_name VARCHAR(255),
agent_id INT,
nominee_name VARCHAR(255),
nominee_relation VARCHAR(255),
payment_method VARCHAR(255),
payment_status VARCHAR(255),
claim_number VARCHAR(255),
claim_amount DECIMAL(10,2),
claim_status VARCHAR(255),
registration_date DATE DEFAULT CURRENT_DATE,
transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
is_active BOOLEAN
);
SELECT * FROM Insurance_details;
INSERT INTO Insurance_details
(customer_name, gender, dob, phone, email, address, city, province, policy_number, policy_type, coverage_amount, premimum_amount, policy_start_date, policy_end_date, insurance_company, agent_name, agent_id, nominee_name, nominee_relation, payment_method, payment_status, claim_number, claim_amount, claim_status, is_active)
VALUES
('sandhya oli', 'female', '2064-01-28', '9762637995', 'sandhya34@gmail.com', 'kapurdhara', 'kathmandu', 'bagmati', 'POL101', 'life', NULL, 15000, '2026-01-22', '2026-03-24', 'nepal life', 'sita oli', 101, 'gita oli', 'wife', 'online', 'paid', 'CLM001', 50000, 'approved', TRUE),
('ram oli', 'male', '2060-02-20', '9865226943', 'ramoli34@gmail.com', 'milanmarg', 'dang', 'lumbini', 'POL102', 'health', 500000, 8000, '2026-02-01', '2027-02-02', 'LIC Nepal', 'laxman bhandari', 102, 'binod shrestha', 'brother', 'cash', 'pending','CLM002', NULL, 'approved', FALSE),
('prakriti oli', 'female', '2061-12-28', NULL, 'prakrti35@gmail.com', 'tapla', 'rolpa', 'lumbini', 'POL103', 'vechile', 300000, 4500, '2026-01-10', '2027-10-01', 'citizen life', 'aruna oli', 111, 'nisana oli', 'sister', 'esewa', 'paid', 'CLMO11', 40000, 'approved', TRUE);
