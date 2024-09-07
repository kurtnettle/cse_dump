CREATE TABLE Hotel(
    hotel_no INT PRIMARY KEY,
    hotel_name TEXT,
    city TEXT
); 
CREATE TABLE Room(
    hotel_no INT,
    room_no INT PRIMARY KEY,
    type TEXT,
    price INT,
    FOREIGN KEY(hotel_no) REFERENCES Hotel(hotel_no)
); 
CREATE TABLE Guest(
    guest_no INT PRIMARY KEY,
    guest_name TEXT,
    guest_address TEXT
); 
CREATE TABLE Booking(
    hotel_no INT,
    guest_no INT,
    date_from DATE,
    date_to DATE,
    room_no INT,
    FOREIGN KEY(hotel_no) REFERENCES Hotel(hotel_no)
    FOREIGN KEY(room_no) REFERENCES Room(room_no)
    FOREIGN KEY(guest_no) REFERENCES Guest(guest_no),
);