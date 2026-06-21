-- LIMIT 

/*
    The LIMIT clause is used to specify the number of records to return from a query.
    It is supported by most SQL databases.
    ----------------------------------------------------------------------------------

    Syntax: 

    SELECT column1, column2, ...
    FROM table_name 
    LIMIT number_of_records;

*/

-- Example
SELECT * FROM employees LIMIT 5; -- Returns the first 5 records from the employees table
SELECT first_name, last_name FROM employees LIMIT 5; -- Returns the first 5 first and last names from the employees table
SELECT * FROM employees LIMIT 5 OFFSET 5; -- Returns the next 5 records from the employees table, skipping the first 5
SELECT * FROM employees LIMIT 5 OFFSET 10; -- Returns the next 5 records from the employees table, skipping the first 10


