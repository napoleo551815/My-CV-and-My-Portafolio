-- INSERT

/*
    The INSERT statement is used to add new records to a table in a database.
    
    Syntax:
    INSERT INTO table_name (column1, column2, ...)
    VALUES (value1, value2, ...);

    where:
    - table_name: The name of the table where the new record will be inserted.
    - column1, column2, ...: The columns in the table where values will be inserted.
    - value1, value2, ...: The values to be inserted into the specified columns.

*/

-- Example 1: Inserting a new employee record
INSERT INTO employees (employee_id, first_name, last_name, salary) -- Specifying the table and columns for the new record
VALUES (1, 'John', 'Doe', 75000); -- Providing the values for the new record

-- Example 2: Inserting multiple records at once
INSERT INTO employees (employee_id, first_name, last_name, salary) -- Specifying the table and columns for the new records
VALUES 
    (2, 'Jane', 'Smith', 80000), -- First new record
    (3, 'Mike', 'Johnson', 65000), -- Second new record
    (4, 'Emily', 'Davis', 72000); -- Third new record

/*
    The INTO clause specifies the table into which the new records will be inserted,
    while the VALUES clause provides the actual data to be added. Each set of values corresponds 
    to a new record in the table.

    VALUES can also be used to insert data from another table or a 
    SELECT statement, allowing for more complex data insertion scenarios.
*/

-- Other examples

--- Example 3: Inserting data from another table
INSERT INTO employees (employee_id, first_name, last_name, salary) -- Specifying the table and columns for the new records
SELECT employee_id, first_name, last_name, salary -- Selecting data from another table
FROM new_employees; -- From the new_employees table, inserting its data into the employees table

-- Example 4: Inserting data with default values
INSERT INTO employees (employee_id, first_name, last_name) -- Specifying the table and columns for the new record, omitting the salary column
VALUES (5, 'Alice', 'Brown'); -- Providing values for the new record, salary will take the default value defined in the table schema (if any)
