-- SUM

/*
    The SUM function is used to calculate the total sum of a numeric column in a table.
    It is an aggregate function that returns a single value.
    ----------------------------------------------------------------------------------------
    Syntax:
    SELECT SUM(column_name) FROM table_name;

*/

-- Example 1: Calculate the total salary of all employees
SELECT SUM(salary) FROM employees;

-- Example 2: Calculate the total sales for a specific product
SELECT SUM(sales) FROM products WHERE product_id = 1;

-- Example 3: Calculate the total quantity of a specific product in stock
SELECT SUM(quantity) FROM inventory WHERE product_id = 1;
