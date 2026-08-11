-- First Create table 

-- How Use by DML Command 

-- CREATE

CREATE TABLE worker (
    worker_id SERIAL PRIMARY KEY,
    worker_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE
);

-- it is used to display the table data

-- SELECT

SELECT * FROM worker;

-- Insert Sample Data

-- INSERT

INSERT INTO worker
(worker_name, email, department, salary, city, joining_date)
VALUES
('Amit Sharma', 'amit@gmail.com', 'IT', 55000, 'Bhopal', '2024-01-15'),
('Priya Singh', 'priya@gmail.com', 'HR', 45000, 'Indore', '2023-06-10'),
('Rahul Verma', 'rahul@gmail.com', 'Finance', 50000, 'Bhopal', '2024-03-20'),
('Neha Gupta', 'neha@gmail.com', 'IT', 60000, 'Indore', '2022-11-05'),
('Rohit Kumar', 'rohit@gmail.com', 'Sales', 40000, 'Jabalpur', '2023-09-12');



-- UPDATE Command 
UPDATE worker
SET salary = 65000
WHERE worker_name = 'Amit Sharma';

-- DELETE Command
DELETE FROM worker
WHERE worker_name = 'Rohit Kumar';

-- Now How to use DDL Command 

-- ALTER Command 
ALTER TABLE worker
ADD COLUMN phone VARCHAR(15);

-- Cloumn Delete 

ALTER TABLE worker
DROP COLUMN phone;

-- Cloumn Rename

ALTER TABLE worker
RENAME COLUMN worker_name TO name;

-- Table 2 , City 

CREATE TABLE city (
    city_name VARCHAR(50),
    state VARCHAR(50)
);

INSERT INTO city (city_name, state)
VALUES
('Bhopal', 'Madhya Pradesh'),
('Indore', 'Madhya Pradesh'),
('Jabalpur', 'Madhya Pradesh'),
('Delhi', 'Delhi');

SELECT * FROM city;

-- Left Join
SELECT *
FROM worker
LEFT JOIN city
ON worker.city = city.city_name;

-- Right Join 
SELECT *
FROM worker
RIGHT JOIN city
ON worker.city = city.city_name;