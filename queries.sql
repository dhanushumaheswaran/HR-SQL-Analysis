  /* =====================================================
   HR Analytics Project - SQL Server
   ===================================================== */

-- View Complete Employee Dataset
select * from employees;


  /* ================================
   1. DATA VALIDATION
   ================================ */

-- Total Employees
SELECT COUNT(*) FROM employees;

-- Unique Departments in the Organization
SELECT DISTINCT department_id FROM employees;

-- Preview First 10 Records of Employee Data
SELECT TOP 10 * FROM employees;

-- Salary Statistics
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary,
AVG(salary) AS avg_salary FROM employees;

-- Check NULL manager_id and commission_pct
SELECT * FROM employees 
WHERE manager_id IS NULL OR commission_pct IS NULL;

-- Check NULL salary, hire_date and department_id 
SELECT * FROM employees
WHERE salary IS NULL OR hire_date IS NULL OR department_id IS NULL;

/* ================================
   2. DATA CLEANING
   ================================ */

-- Replace NULL department_id with -1
UPDATE employees SET department_id = -1
WHERE department_id IS NULL;

SELECT * FROM employees
WHERE department_id = -1;

/* ================================
   3. EXPLORATORY DATA ANALYSIS
   ================================ */

-- Employees per Department
SELECT department_id, COUNT(*) AS total_employees FROM employees
GROUP BY department_id ORDER BY total_employees DESC;

-- Salary by Department
SELECT department_id, MIN(salary) AS min_salary, MAX(salary) AS max_salary,
AVG(salary) AS avg_salary FROM employees group by department_id
order by avg_salary DESC;

-- Hiring Trend
SELECT YEAR(hire_date) AS hire_year, COUNT(*) AS total_hires
FROM employees GROUP BY YEAR(hire_date)
ORDER BY hire_year;

-- Job Role Distribution
SELECT job_id, COUNT(*) AS total_employees
FROM employees GROUP BY job_id
ORDER BY total_employees DESC;

/* ================================
   4. ADVANCED ANALYSIS
   ================================ */

-- Rank Employees by Salary
SELECT first_name, salary, RANK() OVER (ORDER BY salary DESC) AS rank
FROM employees;

-- Top Earner in Each Department
SELECT * FROM (SELECT first_name, department_id,
salary, ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rn
FROM employees) AS t
WHERE rn = 1;

-- Employees Earning Above Department Average
SELECT e.first_name, e.salary, e.department_id
FROM employees e WHERE salary > (SELECT AVG(salary) FROM employees
WHERE department_id = e.department_id);

-- Manager Team Size
SELECT manager_id, COUNT(*) AS team_size FROM employees
WHERE manager_id IS NOT NULL GROUP BY manager_id
ORDER BY team_size DESC;

-- Salary Difference from Department Average
SELECT first_name, department_id, salary,
salary - AVG(salary) OVER (PARTITION BY department_id) AS salary_diff
FROM employees;

