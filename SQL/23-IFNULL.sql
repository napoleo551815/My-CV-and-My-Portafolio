-- IFNULL

/*
    The IFNULL function is used to replace NULL values with a specified default value.
    
    Syntax:
    IFNULL(expression, default_value)

    where:
    - expression: The value to be checked for NULL.
    - default_value: The value to return if the expression is NULL.
*/

-- Example 1: Using IFNULL in a SELECT statement
SELECT 
    employee_id, -- Selecting the employee ID
    first_name, -- Selecting the first name of the employee
    last_name, -- Selecting the last name of the employee
    IFNULL(salary, 0) AS salary -- Replacing NULL salary values with 0
FROM employees; -- From the employees table

-- Example 2: Using IFNULL in an UPDATE statement
UPDATE employees -- Updating the salary of employees, replacing NULL values with a default value
SET salary = IFNULL(salary, 50000) -- If salary is NULL, set it to 50000
WHERE salary IS NULL; -- Only update rows where salary is NULL

-- Example 3: Using IFNULL in an INSERT statement
INSERT INTO employees (employee_id, first_name, last_name, salary) -- Inserting a new employee record, replacing NULL salary with a default value
VALUES (101, 'John', 'Doe', IFNULL(NULL, 60000)); -- If the salary value is NULL, it will be replaced with 60000 during the insert operation