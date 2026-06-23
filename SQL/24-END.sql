-- END

/*
    The END statement is used in SQL to signify the end of a block of code, such as a CASE statement or a BEGIN...END block. 
    It is essential for properly closing these structures and ensuring that the SQL code executes correctly.
    
    Syntax:
    END

    where:
    - END: Marks the end of a block of code, such as a CASE statement or a BEGIN...END block.

*/

-- Example 1: Using END in a CASE statement
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