-- HAVING

/*

    The HAVING clause is used in SQL to filter the results of a query based on aggregate functions applied to groups. 
    It is used in conjunction with the GROUP BY clause to specify conditions for the grouped rows.

    Syntax:
    SELECT column_name(s), aggregate_function(column_name)
    FROM table_name
    GROUP BY column_name(s)
    HAVING condition;

*/

-- Example 1: Retrieve departments with more than 10 employees
SELECT department_id, COUNT(*) AS employee_count -- This counts the number of employees in each department.
FROM employees -- This specifies the table from which to retrieve the data.
GROUP BY department_id -- This groups the employees by their department_id.
HAVING COUNT(*) > 10; -- This filters the results to only include departments with more than 10 employees.

-- Example 2: Retrieve product categories with total sales greater than $100,000
SELECT category, SUM(sales) AS total_sales -- This calculates the total sales for each product category.
FROM products -- This specifies the table from which to retrieve the data.
GROUP BY category -- This groups the products by their category.
HAVING SUM(sales) > 100000; -- This filters the results to only include categories with total sales greater than $100,000.
