'''-- How to Create a Database in pgAdmin 4
-- Open pgAdmin 4.
-- Expand Servers.
-- Right-click Databases.
-- Click Create → Database.
-- Enter the Database Name.
-- Click Save.'''
--------------------------------------------------------
'''-- How to Create a Table Using the Query Tool
-- Open pgAdmin 4.
-- Expand Servers and select your Database.
-- Right-click the Database.
-- Click the Query Tool.'''
#--------------------------------------------------------

'''How to Run a Table
Open pgAdmin 4.
Select your Database.
Open the Query Tool.
Write the SELECT query.
Click Execute (▶) or press F5.'''
------------------------------------------------------------


'''-- NOTE:- Before running any SQL query, first select the query, then click the Run (▶) button'''


-- The database is created for JMV School. 

CREATE TABLE employee (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    email_id VARCHAR(100) UNIQUE NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    city VARCHAR(50)
);
Select * from student;

INSERT INTO student (student_name, email_id, class, roll_no, city)
VALUES
('Rahul Sharma', 'rahul@gmail.com', 'BCA', 101, 'Bhopal'),
('Priya Singh', 'priya@gmail.com', 'BCA', 102, 'Indore'),
('Amit Verma', 'amit@gmail.com', 'BCA', 103, 'Jabalpur'),
('Neha Gupta', 'neha@gmail.com', 'BCA', 104, 'Gwalior'),
('Rohit Kumar', 'rohit@gmail.com', 'BCA', 105, 'Meerut');