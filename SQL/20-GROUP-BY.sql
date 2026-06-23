-- GROUP BY

/*

    The GROUP BY clause is used in SQL to group rows that have the same values in specified columns into summary rows. 
    It is often used with aggregate functions (like COUNT, SUM, AVG, MAX, MIN) to perform calculations 
    on each group of rows.

    It can be used with the nexts clauses:
    - SELECT: To retrieve data from a table and group it by one or more columns.
    - HAVING: To filter the results of a query based on aggregate functions applied to groups.
    ------------------------------------------------------------------------------------------------

    Syntax:
    SELECT column_name(s), aggregate_function(column_name)
    FROM table_name
    GROUP BY column_name(s);

*/

-- Example 1: Count the number of employees in each department
SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id; -- This groups the employees by their department_id and counts the number of employees in each department.

-- Example 2: Calculate the total sales for each product category
SELECT category, SUM(sales) AS total_sales
FROM products
GROUP BY category; -- This groups the products by their category and calculates the total sales for each category.

-- Example 3: Calculate the average salary of employees in each department
SELECT department_id, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id; -- This groups the employees by their department_id and calculates the average salary for each department.