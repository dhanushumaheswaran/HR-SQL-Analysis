# HR Analytics Using SQL Server

## Project Overview
This project focuses on analyzing employee data using SQL Server to extract meaningful insights related to salary distribution, departmental structure, employee hierarchy, and hiring trends. The analysis simulates real-world HR analytics scenarios.

## Dataset Description
The dataset contains employee-level information with the following fields:

- Employee ID  
- First Name  
- Last Name  
- Email  
- Phone Number  
- Hire Date  
- Job ID  
- Salary  
- Commission Percentage  
- Manager ID  
- Department ID  

## Objectives
- Analyze employee distribution across departments  
- Evaluate salary patterns and variations  
- Identify top-performing employees  
- Understand manager–employee hierarchy  
- Detect employees earning above department average  
- Examine hiring trends over time  

## Data Cleaning
- Identified missing values in `department_id`  
- Replaced NULL values with `-1` to maintain data consistency  
- Verified critical columns such as salary and hire_date  

## SQL Techniques Used
- Data Exploration (SELECT, DISTINCT)  
- Aggregations (COUNT, AVG, MIN, MAX)  
- GROUP BY and ORDER BY  
- Window Functions (RANK, ROW_NUMBER)  
- Correlated Subqueries  
- Self Joins (Manager Hierarchy Analysis)  

## Key Analysis Performed
- Employee count by department  
- Salary distribution across departments  
- Hiring trends by year  
- Job role distribution  
- Top earners in each department  
- Employees earning above department average  
- Manager-wise team size analysis  

## Key Insights
- Department 50 has the highest number of employees, indicating operational concentration  
- Department 90 has the highest average salary, suggesting executive-level roles  
- Sales Representatives (SA_REP) form the largest workforce segment  
- Salary distribution varies significantly across departments  
- Several employees earn above their department average, indicating performance-based differentiation  

## Tools Used
- SQL Server Management Studio (SSMS)

## Conclusion
This project demonstrates strong SQL capabilities in data cleaning, analysis, and insight generation. It reflects real-world HR analytics use cases and supports data-driven decision-making.
