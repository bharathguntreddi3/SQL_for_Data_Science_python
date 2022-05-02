-- ALL THE QUERIES ARE FOR A SINGLE TABLE 'salary_range_by_job_classification' CONTAINING 
-- FOLLOWING COLUMNS
-- Setid
-- Job_Code
-- Eff_Date
-- Sal_End_Date
-- Salary_setID
-- Sal_Plan
-- Grade
-- Step
-- Biweekly_High_Rate
-- Biweekly_Low_Rate
-- Union_Code
-- Extended_Step
-- Pay_Type

-- QUERIES

-- Find the distinct values for the extended step.
SELECT 
distinct Extended_step
FROM salary_range_by_job_classification;

-- Excluding $0.00, what is the minimum bi-weekly high rate of pay
Select 
min(Biweekly_high_Rate)
From salary_range_by_job_classification
GROUP BY Biweekly_high_Rate
HAVING Biweekly_high_Rate<>'$0.00';

-- What is the maximum biweekly high rate of pay
SELECT 
Max(Biweekly_high_Rate)
FROM salary_range_by_job_classification;

-- What is the pay type for all the job codes that start with '03'?
Select
job_code,
pay_type
FROM salary_range_by_job_classification
GROUP BY job_code
HAVING job_code like "03%";

-- Run a query to find the Effective Date (eff_date) or Salary End Date (sal_end_date) for grade Q90H0? 
Select
eff_date,
sal_end_date
FROM salary_range_by_job_classification
WHERE grade LIKE 'Q90H0'

-- Sort the Biweekly low rate in ascending order.
SELECT Biweekly_low_rate
FROM salary_range_by_job_classification
ORDER BY Biweekly_low_rate ASC;

-- What Step are Job Codes 0110-0400? 
SELECT 
step,
job_code
FROM salary_range_by_job_classification
WHERE job_code
BETWEEN '0110' AND '0400';

-- What is the Biweekly High Rate minus the Biweekly Low Rate for job Code 0170?
SELECT (Biweekly_high_rate - Biweekly_low_rate)
FROM salary_range_by_job_classification
WHERE job_code = '0170';

-- What is the Extended Step for Pay Types M, H, and D? 
SELECT step
FROM salary_range_by_job_classification
WHERE pay_type IN('M', 'H', 'D');

-- What is the step for Union Code 990 and a Set ID of SFMTA or COMMN? 
SELECT STEP, Union_Code, SetID
from salary_range_by_job_classification
where Union_Code=990 and (SetID = 'SFMTA' or SetID = 'COMMN')
