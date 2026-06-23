-- DELETE

/*
    The DELETE statement in SQL is used to remove existing records from a table.
    It allows you to specify which rows to delete based on certain conditions.

    Syntax:
    DELETE FROM table_name
    WHERE condition;

    where:
    - table_name: The name of the table from which to delete records.
    - condition: The condition that specifies which records to delete. If no condition is provided, all records in the table will be deleted.
*/

-- Example 1: Deleting a single record
DELETE FROM employees -- Specifying the table from which to delete records
WHERE employee_id = 1; -- Deleting the record where employee_id is 1
-- This will remove the employee with ID 1 from the employees table.

-- Example 2: Deleting multiple records
DELETE FROM employees -- Specifying the table from which to delete records
WHERE department_id = 2; -- Deleting all records where department_id is 2
-- This will remove all employees from the department with ID 2 from the employees table.

/*
    A safe practice when using the DELETE statement is to always include 
    a WHERE clause to avoid accidentally deleting all records in the table. 
    If you want to delete all records, you can omit the WHERE clause, but be cautious as this action is irreversible.

    You can also use transactions to ensure that you can roll back changes if needed. 
    For example, you can start a transaction, perform the DELETE operation, and then commit or roll back based on your requirements.
*/

-- Example 3: Deleting all records (use with caution)
DELETE FROM employees; -- Uncommenting this line will delete all records from the employees table.

-- Example 4: Using a transaction to delete records safely
BEGIN TRANSACTION; -- Start a new transaction
DELETE FROM employees -- Specifying the table from which to delete records
WHERE department_id = 3; -- Deleting all records where department_id is 3
COMMIT; -- Commit the transaction if the delete operation is successful
-- ROLLBACK; -- Roll back the transaction if the delete operation is not successful

-- Example 5: Deleting records based on a subquery
DELETE FROM employees -- Specifying the table from which to delete records
WHERE employee_id IN (SELECT employee_id FROM employees WHERE salary < 40000); -- Deleting all employees with a salary less than 40000