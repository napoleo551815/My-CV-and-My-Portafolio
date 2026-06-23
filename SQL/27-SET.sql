-- SET

/*
    The SET statement is used to assign a value to a variable or to change the value of a column in a table.
    
    Syntax:
    SET variable_name = value;

    where:
    - variable_name: The name of the variable or column to set.
    - value: The value to assign to the variable or column.
*/

-- Example 1: Setting a variable
SET @employee_id = 1; -- Assigning the value 1 to the variable @employee_id

-- Example 2: Setting a column value in a table
UPDATE employees -- Specifying the table to update
SET salary = 85000 -- Setting the salary column to 85000
WHERE employee_id = @employee_id; -- Updating the record where employee_id matches the variable @employee_id

--- Example 3: Setting multiple variables
SET @first_name = 'John', @last_name = 'Doe'; -- Assigning values to multiple variables in a single SET statement