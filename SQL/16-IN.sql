-- IN

/*
    IN operator is used to check if a value matches any value in a list of values.
    It can be used in the WHERE clause to filter rows based on a list of possible values.
    
    Syntax:
    SELECT column_name FROM table_name WHERE column_name IN (value1, value2, ...);
*/

-- Example 1: Retrieve all employees from a specific list of departments
SELECT * FROM employees
WHERE department IN ('Sales', 'Marketing', 'IT');

-- Example 2: Retrieve all products with specific categories
SELECT * FROM products
WHERE category IN ('Electronics', 'Clothing', 'Books');