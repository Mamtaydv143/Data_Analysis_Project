SELECT * FROM hospital.hospital_data;
USE hospital;

SET SQL_SAFE_UPDATES = 0;

ALTER TABLE hospital_data
RENAME COLUMN ï»¿_Hospital_Name TO Hospital_Name;

-- 1. Find the total Number of patients Across all Hospitals.
SELECT SUM(Patients_Count)
FROM hospital_data;

-- 2.  Retrive the average count of  Doctors  Available in per Hospital.
Select Hospital_Name, AVG(Doctors_Count) AS AVG_Doctors
FROM hospital_data
GROUP BY Hospital_Name ;

-- 3. Find the top 3 hospital department that have the highest number of patients.
SELECT Department , MAX(Patients_Count) AS MAX_Patients
FROM hospital_data
Group by Department 
ORDER BY MAX_Patients DESC  LIMIT 3; 

-- 4. Identify the hospital that recorded the highest medical expenses.
SELECT Hospital_Name,MAX(Medical_Expenses) AS MAX_Expenses
FROM hospital_data
GROUP BY Hospital_Name
ORDER BY MAX_Expenses DESC LIMIT 10; 

-- 5. Calculate the average medical expenses per day for each hospital.










