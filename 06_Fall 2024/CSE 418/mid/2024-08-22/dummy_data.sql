-- Dummy Data Generated using LLM and Adjusted some values manually

INSERT INTO dept (d_no, d_name) VALUES
(1, 'Engineering'),
(2, 'Marketing'),
(3, 'Finance'),
(4, 'Human Resources');

INSERT INTO emp (e_no, e_name, bdate, title, salary, d_no) VALUES
(101, 'Alice Smith', '1985-06-15', 'EE', 45000, 1),
(102, 'Bob Johnson', '1990-07-22', 'SA', 38000, 1),
(103, 'Carol Davis', '1988-01-30', 'Manager', 60000, 2),
(104, 'David Wilson', '1985-10-09', 'EE', 30000, 3),
(105, 'Eva Martinez', '1992-03-17', 'SA', 36000, 3),
(106, 'Frank Brown', '1987-05-12', 'Assistant', 25000, 4),
(107, 'Grace Lee', '1989-11-23', 'Manager', 65000, 2);

INSERT INTO Proj (P_no, P_name, budget, d_no) VALUES
(201, 'Project Alpha', 30000, 1),
(202, 'Project Beta', 25000, 2),
(203, 'Project Gamma', 50000, 3),
(204, 'Project Delta', 15000, 1),
(205, 'Project Epsilon', 55000, 4);

INSERT INTO workson (e_no, P_no, resp, hours) VALUES
(101, 201, 'Developer', 15),
(102, 201, 'Developer', 20),
(103, 202, 'Manager', 8),
(104, 203, 'Tester', 5),
(105, 204, 'Consultant', 9),
(106, 205, 'Analyst', 25),
(107, 203, 'Manager', 7),
(101, 204, 'Developer', 12),
(102, 203, 'Developer', 6),
(103, 204, 'Manager', 3);
