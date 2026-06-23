-- Between

/*
    BETWEEN operator is used to filter rows based on a range of values.
    It can be used in the WHERE clause to select rows where a column's value is within a specified range.
    
    Syntax:
    SELECT column_name FROM table_name WHERE column_name BETWEEN value1 AND value2;
*/

-- Example 1: Retrieve all employees with salaries between 50000 and 100000
SELECT * FROM employees
WHERE salary BETWEEN 50000 AND 100000;

-- Example 2: Retrieve all products with prices between 10 and 100
SELECT * FROM products
WHERE price BETWEEN 10 AND 100;

/*
    It can be used also with the NOT operator to filter rows outside a specified range
    or to exclude certain values from the results.
*/

-- Example 3: Retrieve all employees with salaries not between 50000 and 100000
SELECT * FROM employees
WHERE salary NOT BETWEEN 50000 AND 100000;

-- Example 4: Retrieve all products with prices not between 10 and 100
SELECT * FROM products
WHERE price NOT BETWEEN 10 AND 100;



