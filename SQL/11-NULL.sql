-- NULL

SELECT * FROM table_name WHERE column_name IS NULL;

/*
    The NULL value represents the absence of a value in a column.
    It is not the same as 0 or an empty string, but rather represents a value that is unknown or not applicable.
    
    NULL are often used to indicate missing or unknown data.
    ------------------------------------------------------------------------------------------------------------

    Syntax for checking NULL values:
    SELECT * FROM table_name WHERE column_name IS NULL;
*/

-- Examples

SELECT * FROM employees WHERE salary IS NULL; -- Find employees with no salary information
SELECT * FROM employees WHERE hire_date IS NULL; -- Find employees with no hire date information

/*
    We can use IS NULL in different contexts, such as in WHERE clauses, JOIN conditions, and aggregate functions.
    For example, we can use it to find all records in a table where a specific column has no value:
    SELECT COUNT(*) FROM employees WHERE salary IS NULL;

*/

-- other examples

SELECT * FROM employees WHERE manager_id IS NULL; -- Find employees with no manager
SELECT * FROM employees WHERE commission IS NULL; -- Find employees with no commission information
SELECT * FROM employees WHERE salary IS NULL AND hire_date IS NULL; -- Find employees with no salary and no hire date information
SELECT * FROM employees WHERE salary IS NULL OR hire_date IS NULL; -- Find employees with either no salary or no hire date information

/*
    We can also use NULL with logical operators to create more complex queries.
    For example, we can use NOT NULL to find all records where a column has a value:
    SELECT * FROM employees WHERE salary IS NOT NULL;

    or

    SELECT * FROM employees WHERE salary IS NOT NULL AND hire_date IS NOT NULL;
*/

-- Examples

SELECT * FROM employees WHERE manager_id IS NOT NULL; -- Find employees with a manager
SELECT * FROM employees WHERE commission IS NOT NULL; -- Find employees with a commission 
SELECT * FROM employees WHERE salary IS NOT NULL AND commission IS NOT NULL; -- Find employees with both a salary and a commission
SELECT * FROM employees WHERE salary IS NOT NULL OR commission IS NOT NULL; -- Find employees with either a salary or a commission