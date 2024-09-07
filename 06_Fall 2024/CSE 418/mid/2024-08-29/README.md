# Lab 03
###### 2024 August 29

## Task: 
Hotel Reservation System:

<code>Hotel(<u>hotel no</u>, hotel name, city)</code>

<code>Room(<u>room no</u>, <u>hotel no</u>, type, price)</code>

<code>Booking(<u>hotel no</u>, <u>guest no</u>, date from, date to, <u>room no</u>)</code>

<code>Guest(<u>guest no</u>, guest name, guest address)</code>

### Queries

1. **List full details of all hotels in London.**

    ```sql
    SELECT
        *
    FROM
        Hotel
    WHERE
        city = 'London';
    ```

2. **List all double or family rooms with a price below $400 per night, in ascending order of price.**
    ```sql
    SELECT
        *
    FROM
        Room
    WHERE TYPE
        = 'Double' | 'Family' AND price < 400
    ORDER BY
        price ASC;
    ```
    #### alternative solution
    ```sql
    SELECT
        *
    FROM
        Room
    WHERE TYPE
        IN('Double', 'Family') AND price < 400
    ORDER BY
        price ASC;
    ```

3. **What are the minimum, maximum, and average prices of the rooms?**
    ```sql
    SELECT
        MIN(price) AS min_price,
        MAX(price) AS max_price,
        AVG(price) AS avg_price
    FROM
        Room;
    ```

4. **List the rooms that are currently occupied by the "ABC" hotel.**
    ```sql
    SELECT
        Room.*
    FROM
        Room
    JOIN Booking ON Room.room_no = Booking.room_no
    JOIN Hotel ON Room.hotel_no = Hotel.hotel_no
    WHERE
        Hotel.hotel_name = 'ABC' 
        AND CURDATE() BETWEEN Booking.date_from AND Booking.date_to;
    ```
5. **List the guest names who lived in "NY" and books room in "CBC" hotel after 20/3/24**

    ```sql
    SELECT
        guest_name,
        guest_address
    FROM
        Guest
    JOIN Booking ON Guest.guest_no = Booking.guest_no
    JOIN Hotel ON Hotel.hotel_no = Booking.hotel_no
    WHERE
        Guest.guest_address LIKE '%NY%' 
        AND Hotel.hotel_name = 'CBC' 
        AND Booking.date_from > '2024-03-20';
    ```
