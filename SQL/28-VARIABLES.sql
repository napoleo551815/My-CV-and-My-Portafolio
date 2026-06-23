-- VARIABLES in SQL

/*
    Variables in SQL are used to store temporary data that can be used and manipulated within a session or a block of code. 
    They allow for dynamic SQL execution and can hold values that can be referenced later in the code.

    Syntax:
    DECLARE @variable_name datatype; -- Declare a variable
    SET @variable_name = value; -- Assign a value to the variable
    SELECT @variable_name; -- Retrieve the value of the variable

    where:
    - @variable_name: The name of the variable, prefixed with '@'.
    - datatype: The data type of the variable (e.g., INT, VARCHAR, DATE).
    -------------------------------------------------------------------------------------------------------------

    Another way to understand is that variables in SQL are like containers that hold data temporarily 
    during the execution of a query or a stored procedure.
    They can be used to store values, perform calculations, and control the flow of logic within SQL scripts.
*/

-- Example 1: Declaring and using a variable
DECLARE @employee_id INT; -- Declaring a variable named @employee_id of type INT
SET @employee_id = 1; -- Assigning the value 1 to the variable @employee_id
SELECT @employee_id; -- Retrieving the value of the variable @employee_id

-- Example 2: Using a variable in a SELECT statement
DECLARE @salary_threshold INT; -- Declaring a variable named @salary_threshold of type INT
SET @salary_threshold = 50000; -- Assigning the value 50000 to the variable @salary_threshold
SELECT @salary_threshold; -- Retrieving the value of the variable @salary_threshold

/*
    In sql, variables are commonly used in stored procedures, functions, 
    and scripts to hold temporary data that can be referenced and manipulated throughout the execution of the code.

    You will find that variables are particularly useful for:
    - Storing intermediate results of calculations.
    - Holding values that are used multiple times in a query or procedure.
    - Controlling the flow of logic based on certain conditions.

    Overall, variables in SQL provide a way to make your code more dynamic, flexible, and easier to maintain.s

*/