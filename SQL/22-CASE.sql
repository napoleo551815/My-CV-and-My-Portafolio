-- CASE

/*
    The CASE statement is used in SQL to perform conditional logic in a SELECT statement. 
    It allows you to specify different values based on certain conditions.
    
    Syntax:
    CASE
        WHEN condition1 THEN result1
        WHEN condition2 THEN result2
        ...
        ELSE default_result
    END
*/

-- Example 1: Using CASE in a SELECT statement
SELECT 
    employee_id, -- Selecting the employee ID
    first_name, -- Selecting the first name of the employee
    last_name, -- Selecting the last name of the employee
    salary, -- Selecting the salary of the employee
    CASE 
        WHEN salary < 50000 THEN 'Low' -- If salary is less than 50000, categorize as 'Low'
        WHEN salary BETWEEN 50000 AND 100000 THEN 'Medium' -- If salary is between 50000 and 100000, categorize as 'Medium'
        ELSE 'High' -- If salary is greater than 100000, categorize as 'High'
    END AS salary_category -- Alias for the result of the CASE statement
FROM employees; -- From the employees table

-- Example 2: Using CASE in an ORDER BY clause
SELECT 
    employee_id, -- Selecting the employee ID
    first_name, -- Selecting the first name of the employee
    last_name, -- Selecting the last name of the employee
    salary -- Selecting the salary of the employee
FROM employees
ORDER BY 
    CASE 
        WHEN salary < 50000 THEN 1 -- Order by 'Low' salary category first
        WHEN salary BETWEEN 50000 AND 100000 THEN 2 -- Order by 'Medium' salary category second
        ELSE 3 -- Order by 'High' salary category last
    END;