-- BEGIN TRANSACTION and COMMIT

/*
    The BEGIN TRANSACTION statement in SQL is used to start a new transaction. 
    A transaction is a sequence of one or more SQL statements that are executed as a single unit of work. 
    Transactions ensure that either all operations within the transaction are completed successfully, or none of them are applied, maintaining data integrity.

    Syntax:
    BEGIN TRANSACTION

    COMMIT;

    where:
    - BEGIN TRANSACTION: Starts a new transaction.
    - COMMIT: Ends the transaction and makes all changes made during the transaction permanent.

*/

-- Example 1: Using BEGIN TRANSACTION and COMMIT to insert a new employee
BEGIN TRANSACTION; -- Start a new transaction
INSERT INTO employees (employee_id, first_name, last_name, salary) -- Inserting a new employee record
VALUES (102, 'Jane', 'Smith', 70000); -- Values for the new employee record
COMMIT; -- Commit the transaction to make the changes permanent
-- This ensures that the new employee record is added to the employees table only if the entire transaction is successful.

-- Example 2: Using BEGIN TRANSACTION and COMMIT to update an employee's salary
BEGIN TRANSACTION; -- Start a new transaction
UPDATE employees -- Updating the salary of an existing employee
SET salary = 75000 -- Setting the new salary value
WHERE employee_id = 102; -- Updating the record where employee_id is 102
COMMIT; -- Commit the transaction to make the changes permanent
-- This ensures that the salary update is applied only if the entire transaction is successful.