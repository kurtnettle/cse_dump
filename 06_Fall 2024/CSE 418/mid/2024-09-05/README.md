# Lab 04
###### 2024 September 05

## Task: 

<code>books(<u>b_id</u>, title, author, publisher year, genre, available copy)</code>

<code>members(<u>m_id</u>, name, email, join_date)</code>

<code>borrow book(<u>b_id</u>, <u>m_id</u>, borrow date, return date, fine amount)</code>

<code>librarian(<u>l_id</u>, name, mail, address, type, working hour)</code>

### Queries
1. **Find the members name and id who joined after 24th February and borrow minimum 3 books.**
    ```sql
    SELECT 
    m.name, 
    m.m_id 
    FROM 
    members m 
    JOIN borrowed_book b ON m.m_id = b.m_id 
    WHERE 
    m.join_date > '2024-02-24'
    GROUP BY 
    m.m_id, 
    m.name 
    HAVING 
    COUNT(b.b_id) >= 3;
    ```

2. **Update the borrow book table of book id 5002 name "ABC" to "DEF".**
    ```sql
    UPDATE 
    books 
    SET 
    title = 'DEF' 
    WHERE 
    b_id = 5002;
    ```

3. **Find the total fines collected from overdue books.** 
    ```sql
    SELECT
        SUM(fine_amount) AS total_fines
    FROM
        borrowed_book    
    ```

4. **List the all available copies of books of "history" genre.**
    ```sql
    SELECT
        title,
        available_copy
    FROM
        books
    WHERE
        genre = 'historical';    
    ```

5. **Find the librarian names who completes working hours regularly.**  
    (assuming working hour be 40hrs/week)
    ```sql
    SELECT 
    name
    FROM 
    librarian 
    WHERE 
    working_hour >= 40;
    ```
