-- How to create a table in PostgreSQL

-- TABLE: EMPLOYEE

CREATE TABLE EMPLOYEE (
    EMP_ID SERIAL PRIMARY KEY,
    EMP_NAME VARCHAR(100) NOT NULL,
    EMAIL_ID VARCHAR(100) UNIQUE NOT NULL,
    DEPARTMENT VARCHAR(50) NOT NULL,
    SALARY DECIMAL(10,2) NOT NULL,
    CITY VARCHAR(50)
);

SELECT * FROM EMPLOYEE;

-- How to insert data into a table in PostgreSQL

INSERT INTO EMPLOYEE (EMP_NAME, EMAIL_ID, DEPARTMENT, SALARY, CITY)
VALUES
('AMIT SHARMA', 'AMIT.SHARMA@TCS.COM', 'IT', 55000.00, 'BANGALORE'),
('PRIYA SINGH', 'PRIYA.SINGH@TCS.COM', 'HR', 48000.00, 'HYDERABAD'),
('RAHUL VERMA', 'RAHUL.VERMA@TCS.COM', 'FINANCE', 60000.00, 'PUNE'),
('NEHA GUPTA', 'NEHA.GUPTA@TCS.COM', 'TESTING', 52000.00, 'CHENNAI'),
('ROHIT KUMAR', 'ROHIT.KUMAR@TCS.COM', 'DEVELOPMENT', 70000.00, 'NOIDA');

SELECT * FROM EMPLOYEE;

-- How to use LEFT and RIGHT JOIN in PostgreSQL

-- TABLE: project

CREATE TABLE project (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(100),
    emp_id INT,
    project_location VARCHAR(50)
);

SELECT * FROM project;

INSERT INTO project (project_name, emp_id, project_location)
VALUES
('Banking Project', 1, 'Bangalore'),
('Healthcare Project', 2, 'Hyderabad'),
('E-Commerce Project', 3, 'Pune'),
('AI Project', 6, 'Delhi'),
('Cloud Project', 7, 'Mumbai');

SELECT * FROM project;

-- LEFT JOIN

SELECT *
FROM employee
LEFT JOIN project
ON employee.emp_id = project.emp_id;

-- RIGHT JOIN

SELECT *
FROM employee
RIGHT JOIN project
ON employee.emp_id = project.emp_id;

-- How to use OR and AND operators in PostgreSQL

-- AND
SELECT *
FROM employee
WHERE department = 'IT'
AND salary > 50000;

-- OR
SELECT *
FROM employee
WHERE department = 'IT'
OR salary > 60000;




