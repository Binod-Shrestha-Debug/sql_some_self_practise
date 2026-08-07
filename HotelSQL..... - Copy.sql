CREATE TABLE guests(
guests_id SERIAL PRIMARY KEY,
guests_name VARCHAR(255) NOT NULL,
rom_number INT,
room_type VARCHAR(255),
phone_number VARCHAR(255),
address VARCHAR(255),
check_in DATE,
check_out DATE,
total_bill DECIMAL(10,2),
is_check_in BOOLEAN
);
SELECT * FROM guests;
INSERT INTO guests
(guests_name, room_number, room_type, phone_number, address, check_in, check_out, total_bill, is_check_in)
VALUES
('prakriti oli', 2, 'small', '9818620556', 'Kathmandu', '2026-03-24', '2026-03-30', 12000, TRUE),
('sandhya oli', 4, 'large', '9865226943', 'Pokhara', '2026-05-20', '2026-05-25', 15000, FALSE),
('sunita oli', 6, 'medium', '9851080438', 'Butwal', '2026-04-15', '2026-04-25', 20000, TRUE);
ALTER TABLE guests
RENAME COLUMN rom_number TO room_number;
TRUNCATE TABLE guests;
TRUNCATE TABLE guests RESTART IDENTITY;