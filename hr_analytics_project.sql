SELECT * FROM hr_data;


-- Q1. Total number of employees

SELECT COUNT(*) AS employees_count
FROM hr_data;

-- Insight:
-- Shows total workforce size.


-- Q2. Employees by department

SELECT department, COUNT(*) AS employees_count
FROM hr_data
GROUP BY department;

-- INSIGHT:
-- Identifies department with highest workforce


-- Q3. Count employees by gender
SELECT gender, COUNT(*) AS employees_count
FROM hr_data 
GROUP BY gender;


-- Q4. Average age of employees
SELECT AVG(age) AS average_age
FROM hr_data;


-- Q5. Average monthly income by department
SELECT department, AVG(MonthlyIncome) as avg_salary
FROM hr_data
GROUP BY department;


-- Q6. Attrition count
SELECT Attrition , COUNT(*) AS total 
from hr_data
GROUP BY Attrition;


-- Q7. Attrition by department
SELECT department, COUNT(*) AS Attrition_count 
FROM hr_data
WHERE Attrition = 'yes'
GROUP BY department;


-- Q8. Employees working overtime
SELECT overtime,
     COUNT(*) AS employee_count 
FROM hr_data
GROUP BY overtime;


-- Q9. Highest paid employees
SELECT JobRole,
      EmployeeNumber,
      MonthlyIncome
FROM hr_data
ORDER BY MonthlyIncome DESC
LIMIT 10;

-- INSIGHT:
-- Identifies the highest paid employees and their job roles


-- Q10. Average working years by job role
SELECT JobRole,
      AVG(TotalWorkingYears) AS Average_working_years
FROM hr_data
GROUP BY JobRole;

-- INSIGHT: 
-- Shows average employee experience level across different job roles.


-- Q11. Attrition rate
SELECT (COUNT(CASE WHEN Attrition = "Yes" THEN 1 END)*100.0/ COUNT(*))
AS Attrition_rate
FROM hr_data;
   
   
-- Q12. Department with highest attrition
SELECT department,
       COUNT(*) AS Attrition_count
FROM hr_data
WHERE Attrition ='YES'
GROUP BY  Department
ORDER BY  Attrition_count DESC
LIMIT 1; 


-- Q13. Employees with income above average salary
SELECT EmployeeNumber,
       MonthlyIncome
FROM hr_data
WHERE MonthlyIncome > (SELECT AVG(MonthlyIncome) FROM hr_data);
       
       
       
