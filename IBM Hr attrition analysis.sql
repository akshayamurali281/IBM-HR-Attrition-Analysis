SELECT * FROM ibm_hr_analytics.`hr-employee-attrition`;
USE ibm_hr_analytics;

ALTER TABLE `hr-employee-attrition`
RENAME TO hr_attrition;
SELECT COUNT(*) FROM hr_attrition;
SELECT COUNT(*) 
FROM hr_attrition 
WHERE Attrition = "Yes";

SELECT * FROM hr_attrition;

SELECT Department,
COUNT(*) AS Employees_left
FROM hr_attrition
WHERE Attrition = "Yes"
GROUP BY Department
ORDER BY COUNT(*) DESC;

SELECT COUNT(*) AS Total_employees_per_department,
Department
FROM hr_attrition
GROUP BY Department;

SELECT 
   Department,
   COUNT(*) AS Total_employees,
   SUM(CASE WHEN Attrition = "Yes"
	   THEN 1 ELSE 0 END) AS Employee_left,
	ROUND(SUM(CASE WHEN Attrition = "Yes"
               THEN 1 ELSE 0 END) * 100.0/COUNT(*), 2)
			   AS Attrition_percentage
FROM hr_attrition
GROUP BY Department
ORDER BY attrition_percentage DESC;

ALTER TABLE hr_attrition
RENAME COLUMN MonthlyIncome TO Monthly_Income_in$;

DESCRIBE hr_attrition;

SELECT 
Department,
Attrition,
ROUND(AVG(Monthly_Income_in$), 2) AS Avg_Monthly_Income
FROM hr_attrition
GROUP BY Department, Attrition
ORDER BY Department, Attrition;

SELECT 
Department,
Attrition,
ROUND(AVG(Monthly_Income_in$), 2) AS Avg_Monthly_Income_attritioned
FROM hr_attrition
WHERE Attrition = "Yes"
GROUP BY Department
ORDER BY Department DESC;

SELECT 
JobInvolvement,
JobLevel,
JobRole,
Monthly_Income_in$,
PercentSalaryHike,
PerformanceRating,
TotalWorkingYears,
YearsInCurrentRole,
YearsSinceLastPromotion
FROM hr_attrition;

ALTER TABLE hr_attrition DROP COLUMN Over18;
ALTER TABLE hr_attrition DROP COLUMN StandardHours;
ALTER TABLE hr_attrition DROP COLUMN EmployeeCount;

WITH DeptAvg AS (
  SELECT 
    EmployeeNumber, Age, Department,
    TotalWorkingYears, YearsSinceLastPromotion,
    PercentSalaryHike, OverTime, PerformanceRating, Monthly_Income_in$,
    AVG(Monthly_Income_in$) OVER 
    (PARTITION BY Department) AS Dept_Avg_Income
  FROM hr_attrition
)
SELECT 
  EmployeeNumber, Age, Department,
  TotalWorkingYears, YearsSinceLastPromotion,
  PercentSalaryHike, OverTime, Dept_Avg_Income, PerformanceRating, Monthly_Income_in$
FROM DeptAvg
WHERE PerformanceRating = 4
AND Monthly_Income_in$ < Dept_Avg_Income
ORDER BY Monthly_Income_in$ ASC
LIMIT 5;

ALTER TABLE hr_attrition 
RENAME COLUMN ï»¿Age TO Age;

SELECT
OverTime,
COUNT(*) AS Total_employees,
SUM(CASE WHEN Attrition = "Yes"
     THEN 1 ELSE 0 END ) AS Employees_left,
ROUND(SUM(CASE WHEN Attrition = "Yes"
         THEN 1 ELSE 0 END) *100.0/COUNT(*), 2) AS Attrition_percentage
FROM hr_attrition
GROUP BY OverTime
ORDER BY Attrition_percentage DESC;

SELECT 
  AVG(Monthly_Income_in$) AS Avg_Monthly_Income,
  MIN(Monthly_Income_in$) AS Min_Monthly_Income,
  MAX(Monthly_Income_in$) AS MAX_Monthly_income,
  COUNT(*) AS Total_employees,
  JobRole
FROM hr_attrition
GROUP BY JobRole
ORDER BY Avg_Monthly_Income DESC;

