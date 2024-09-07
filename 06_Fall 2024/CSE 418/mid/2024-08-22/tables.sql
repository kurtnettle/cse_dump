CREATE TABLE dept(
    d_no INT PRIMARY KEY,
    d_name TEXT
); 
CREATE TABLE emp(
    e_no INT PRIMARY KEY,
    e_name TEXT,
    bdate DATE,
    title TEXT,
    salary INT,
    d_no INT,
    FOREIGN KEY(d_no) REFERENCES dept(d_no)
); 
CREATE TABLE Proj(
    P_no INT PRIMARY KEY,
    P_name TEXT,
    budget INT,
    d_no INT,
    FOREIGN KEY(d_no) REFERENCES dept(d_no)
); 
CREATE TABLE workson(
    e_no INT,
    P_no INT,
    resp TEXT,
    hours INT,
    FOREIGN KEY(e_no) REFERENCES emp(e_no),
    FOREIGN KEY(P_no) REFERENCES Proj(P_no)
);