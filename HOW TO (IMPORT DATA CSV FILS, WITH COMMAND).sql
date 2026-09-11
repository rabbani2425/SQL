DROP TABLE IF EXISTS STUDENT_DETAILS;

CREATE TABLE IF NOT EXISTS STUDENT_DETAILS(
			srno INT PRIMARY KEY,
			order_id VARCHAR(20),
			student_name VARCHAR(50),
			payment_date DATE,
			course_name VARCHAR(30),
			price NUMERIC,
			payment_status VARCHAR(15),
			payment_id VARCHAR(30),
			email VARCHAR(50),
			state VARCHAR(30)	
);

SELECT * FROM STUDENT_DETAILS;

-- HOW TO IMPORT CSV FILS IN SQL WITH COMMAND 
-- COPY
-- STUDENT_DETAILS(srno,order_id,student_name,payment_date,course_name,price,payment_status,payment_id,email,state)
-- FROM 'C:\Users\Gulam\Downloads\archive\Indian_Students_Data 2.csv'
-- DELIMITER','
-- CSV HEADER;