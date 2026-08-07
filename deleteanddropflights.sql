CREATE TABLE Flights (
    flight_id SERIAL PRIMARY KEY,
    passenger_name VARCHAR(100) NOT NULL,
    passport_number VARCHAR(20) UNIQUE,
    flight_number VARCHAR(20),
    airline_name VARCHAR(100),
    departure_city VARCHAR(100),
    arrival_city VARCHAR(100),
    departure_date DATE,
    departure_time TIME,
    seat_number VARCHAR(10),
    travel_class VARCHAR(20),
    ticket_price DECIMAL(10,2),
    payment_method VARCHAR(50),
    booking_status VARCHAR(20),
    is_boarded BOOLEAN
);
SELECT * FROM Flights;
INSERT INTO Flights
(passenger_name, passport_number, flight_number, airline_name, departure_city, arrival_city, departure_date, departure_time, seat_number, travel_class, ticket_price, payment_method, booking_status, is_boarded)
VALUES
('Ram Sharma', 'PA123456', 'RA201', 'Buddha Air', 'Kathmandu', 'Pokhara', '2026-08-10', '09:30:00', '12A', 'Economy', 4500.00, 'Cash', 'Confirmed', FALSE),
('Sita Karki', 'PA123457', 'YT305', 'Yeti Airlines', 'Kathmandu', 'Biratnagar', '2026-08-11', '11:15:00', '15C', 'Business', 7200.00, 'Card', 'Confirmed', FALSE),
('Hari Thapa', 'PA123458', 'RA205', 'Buddha Air', 'Pokhara', 'Kathmandu', '2026-08-12', '14:45:00', '08B', 'Economy', 4600.00, 'eSewa', 'Confirmed', TRUE),
('Gita Rai', 'PA123459', 'SJ101', 'Shree Airlines', 'Kathmandu', 'Nepalgunj', '2026-08-13', '08:00:00', '20D', 'Economy', 5800.00, 'Khalti', 'Cancelled', FALSE),
('Sita7 Rai', 'PA1234510', 'SJ101', 'Shree Airlines', 'Kathmandu', 'Nepalgunj', '2026-08-13', '08:00:00', '20D', 'Economy', 5800.00, 'Khalti', 'Cancelled', FALSE),
('Binod Shrestha', 'PA123460', 'YT401', 'Yeti Airlines', 'Kathmandu', 'Bhairahawa', '2026-08-14', '16:30:00', '05A', 'Business', 6800.00, 'Cash', 'Confirmed', FALSE);

DELETE FROM Flights
WHERE departure_city='kathmandu';

ALTER TABLE Flights
DROP COLUMN passport_number;