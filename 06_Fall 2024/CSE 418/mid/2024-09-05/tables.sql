CREATE TABLE books (
    b_id INT PRIMARY KEY,
    title TEXT,
    author TEXT,
    publisher_year INT,
    genre TEXT,
    available_copy INT
);

CREATE TABLE members (
    m_id INT PRIMARY KEY,
    name TEXT,
    email TEXT,    
    join_date DATE
);

CREATE TABLE borrowed_book (
    b_id INT,
    m_id INT,
    borrow_date DATE,
    return_date DATE,
    fine_amount DECIMAL,
    FOREIGN KEY (b_id) REFERENCES books(b_id),
    FOREIGN KEY (m_id) REFERENCES members(m_id)
);

CREATE TABLE librarian (
    l_id INT PRIMARY KEY,
    name TEXT,
    mail TEXT,
    address TEXT,
    type TEXT,
    working_hour INT
);