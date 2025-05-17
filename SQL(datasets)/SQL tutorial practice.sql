
USE company;


DROP TABLE IF EXISTS emp;

-- Create the employee table
CREATE TABLE emp(
employee_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
department VARCHAR(50),
salary DECIMAL(15,2) CHECK(salary>=0),
joining_date DATE NOT NULL,
age INT CHECK (age>=18)
);

-- Insert the some sample data into the employee table 
INSERT INTO emp(first_name,last_name, department,salary, joining_date,age)
VALUES
("manu","tamang","IT",52000.00,"2022-02-5",21),
("mamta","yadav","CSE",50000.00,"2025-10-27",21),
("Aasha","devi","CSE",25000.00,"2022-10-12",45),
("satya","yadav","NON-TECH",45000.00,"2021-3-23",48),
("Nisha","Yadav","Medical",65000.00,"2026-02-04",25);

SELECT* FROM emp;

-- 1. Retrive all employee frist_name & department 
SELECT first_name,department
FROM emp;

-- 2.To turn off the safe mode
SET SQL_SAFE_UPDATES=0;

-- 3.Update the salary of all employee in the "CSE" department by increasiing it by "10%"
UPDATE emp
SET salary = salary+(salary*0.1)
WHERE department="CSE";

-- 4. Delete all employee who are older than 34 years
DELETE FROM  emp
WHERE  age>=34;

-- 5. Rename the 'department' column to  'dept-name'.
ALTER TABLE emp
RENAME COLUMN  department to dept_name;

-- 6.Add a new column 'email' to the 'emp' table
ALTER TABLE emp
ADD COLUMN email  VARCHAR(50);

SELECT* FROM emp;

--  7.Retrive the name of employee who joined after march 25, 2021

SELECT * FROM emp
WHERE joining_date>"2021-03-25";

-- 8. change the data type of the joining_date column to year.
ALTER TABLE emp
MODIFY COLUMN salary INTEGER;

-- 9.List all employee with their age and salary in descending order of salary.
SELECT first_name, age,salary FROM emp
ORDER BY salary DESC;

-- 10.  Insert a new employeee with the following details.
INSERT INTO emp(first_name,last_name, department,salary,joining_date,age)
VALUES("Raj","Singh","Marketing", 60000,"2023-09-15",30);

-- 11. Update age of employee +1 to every employee
SET SQL_SAFE_UPDATES = 0;
UPDATE  emp
SET age= age+1
;


/* CASE with AND & OR operators -Stock status 
We will classify products based on quantity available:
In Stock if quantity is 10 or more,
Limited if quantity is between 5 & 9,
Out of stock Soon if Quantity is less than 5;
*/

SELECT Product_name,Quantity,
	   CASE 
            WHEN Quantity >=20 THEN " In Stock"
			WHEN quantity BETWEEN 10 AND 19 THEN "Limited"
			ELSE "Out of Stock Soon"
      END AS Stock_status
FROM datasets;


/* CASE with LIKE operator - Category Classification 
Check if the category name contains "Electronics" or "Furniture" Using LIKE.*/

SELECT Product_name, Quantity,
	   CASE
          WHEN category LIKE "Electronics%" THEN "Electronics Item"
          WHEN category LIKE "Furniture%" THEN "Furniture item"
          ELSE "Accessory Item"
	   END AS category_Status
FROM datasets; 


