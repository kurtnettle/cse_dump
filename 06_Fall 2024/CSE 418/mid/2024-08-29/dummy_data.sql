-- Dummy Data Generated using LLM and Adjusted some values manually

INSERT INTO Hotel (hotel_no, hotel_name, city) VALUES
(1, 'Grand Hotel', 'London'),
(2, 'Royal Inn', 'Paris'),
(3, 'ABC', 'London'),
(4, 'Comfort Suites', 'NY'),
(5, 'Seaside Resort', 'NY');

INSERT INTO Room (room_no, hotel_no, type, price) VALUES
(101, 1, 'Single', 150),
(102, 1, 'Double', 300),
(103, 1, 'Family', 350),
(201, 2, 'Double', 200),
(202, 2, 'Family', 400),
(301, 3, 'Single', 180),
(302, 3, 'Double', 250),
(303, 3, 'Family', 420),
(401, 4, 'Double', 350),
(402, 5, 'Family', 350);

INSERT INTO Guest (guest_no, guest_name, guest_address) VALUES
(1001, 'John Doe', '123 Elm Street, NY'),
(1002, 'Jane Smith', '456 Oak Avenue, London'),
(1003, 'Emily Davis', '789 Pine Road, NY'),
(1004, 'Michael Brown', '101 Maple Lane, London');

INSERT INTO Booking (hotel_no, guest_no, date_from, date_to, room_no) VALUES
(1, 1002, '2024-08-15', '2024-09-20', 102),
(1, 1004, '2024-08-22', '2024-09-25', 103),
(2, 1001, '2024-08-10', '2024-09-12', 201),
(3, 1003, '2024-08-21', '2024-09-23', 302),
(5, 1003, '2024-08-26', '2024-09-28', 402);
