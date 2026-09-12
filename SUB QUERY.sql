--CREATING EMP TABLE 
DROP TABLE IF EXISTS emp;
CREATE TABLE IF NOT EXISTS emp
(

		emp_id VARCHAR(10) PRIMARY KEY,
		salesman_name VARCHAR(20),
		city VARCHAR(20),
		age INT
);


SELECT * FROM emp;

insert into emp(emp_id, salesman_name, city, age)
		values('S001', 'Sachin Jadhav', 'Mumbai', 35),
		      ('S002', 'Adika Singh', 'Pune', 30),
			  ('S003', 'Vijay More', 'Delhi', 29),
			  ('S004', 'Vinod Zine', 'Mumbai', 31),
			  ('S005', 'Hari Umap', 'Mumbai', 26),
			  ('S006', 'Raj Mehta', 'Mumbai', 36);


SELECT AVG (AGE) FROM EMP;

-- SELECT * 
-- FROM EMP 
-- WHERE AGE<31.166;


SELECT * 
FROM EMP 
WHERE AGE<(SELECT AVG (AGE) FROM EMP);




--CREATING SALARY TABLE 
DROP TABLE IF EXISTS salary;
CREATE TABLE IF NOT EXISTS salary
(

		emp_id VARCHAR(10) PRIMARY KEY,
		salesman_name VARCHAR(20),
		salary INT
);

SELECT * FROM salary;
insert into salary(emp_id, salesman_name, salary)
           values('S001', 'Sachin Jadhav', 25000),
		         ('S002', 'Adika Singh', 30000),
				 ('S003', 'Vijay More',50000),
				 ('S006', 'Raj Mehta',23000);
				 

SELECT EMP_ID  FROM SALARY;

SELECT EMP_ID, SALESMAN_NAME, AGE  
FROM EMP 
WHERE  EMP_ID IN (SELECT EMP_ID  FROM SALARY);



-- PRECTICAL EXAMPLE ASSIGMENT ON SUB QUERY 

SELECT EMP_ID 
FROM SALARY 
WHERE SALARY  > 25000;


SELECT EMP_ID, SALESMAN_NAME, AGE

FROM EMP
WHERE EMP_ID IN(SELECT EMP_ID FROM SALARY WHERE SALARY > 25000);
