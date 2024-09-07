# Lab 02
###### 2024 August 22

## Task: 

<code>emp(<u>eno</u>, ename, bdate, title, salary, dno)</code>

<code>Proj(<u>Pno</u>, Pname, budget, dno)</code>

<code>dept(<u>dno</u>, dname)</code>

<code>workson(<u>eno</u>, <u>Pno</u>, resp, hours)</code>

### Queries

1. **Find workson records where hours worked is less than 10 and responsibility is "Manager".**

    ```sql
    SELECT
        *
    FROM
        workson
    WHERE
        hours < 10 AND resp = 'Manager';
    ```

2. **Find employees (no and name) who have title of "EE" or "SA" and make more than $35000**
    ```sql
    SELECT
        e_no,
        e_name
    FROM
        emp
    WHERE
        (title = 'EE' OR title = 'SA') AND salary > 35000;
    ```

3. **Find project name,department name and budget for all projects within budget $20,000 to $50,000**

    ```sql
    SELECT
        Proj.P_name,
        dept.d_name,
        Proj.budget
    FROM
        Proj
    JOIN dept ON Proj.d_no = dept.d_no
    WHERE
        Proj.budget BETWEEN 20000 AND 50000;
    ```