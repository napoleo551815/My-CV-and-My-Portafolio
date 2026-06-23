-- UPDATE

/*
    The UPDATE statement is used to modify existing records in a table.
    
    Syntax:
    UPDATE table_name
    SET column1 = value1, column2 = value2, ...
    WHERE condition;

    where:
    - table_name: The name of the table to update.
    - column1, column2, ...: The columns to be updated.
    - value1, value2, ...: The new values for the columns.
    - condition: The condition that specifies which records to update.
*/

-- Example 1: Updating a single record
UPDATE employees -- Specifying the table to update
SET salary = 80000 -- Setting the new salary value
WHERE employee_id = 1; -- Updating the record where employee_id is 1
-- This will change the salary of the employee with ID 1 to 80000.

-- Example 2: Updating multiple records
UPDATE employees -- Specifying the table to update
SET salary = salary * 1.10 -- Increasing the salary by 10%
WHERE department_id = 2; -- Updating records where department_id is 2
-- This will increase the salary of all employees in department 2 by 10%.

--- Example 3: Updating records with a condition
UPDATE employees -- Specifying the table to update 
SET salary = 90000 -- Setting the new salary value
WHERE salary < 60000; -- Updating records where salary is less than 60000

