CREATE TABLE patients (
patients_id SERIAL PRIMARY KEY,
patients_name VARCHAR(255) NOT NULL,
patients_age INT,
patients_gender VARCHAR(255),
patients_disease VARCHAR(255),
patients_doctorname VARCHAR(255),
patients_phone VARCHAR(255),
patients_address VARCHAR(255),
patients_admissiondate DATE,
patients_dischargedate DATE,
is_admitted BOOLEAN
);
SELECT * FROM patients;
INSERT INTO patients

VALUES
(1, 'Sandhya', 19, 'Female', 'Malaria', 'Dr. Ankit', '9851080438', 'Kathmandu', '2026-07-01', '2026-07-08', TRUE),
(2, 'Binod', 25, 'Male', 'Diabetes', 'Dr. Sagar', '9762637995', 'Butwal', '2026-06-20', '2026-06-26', TRUE),
(3, 'Nisana', 23, 'Female', 'Tuberculosis', 'Dr. Gaurab', '9865226743', 'Dang', '2026-07-03', '2026-07-12', FALSE);
