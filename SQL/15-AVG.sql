-- AVG

/*
    AVG function is used to calculate the average value of a numeric column in a SQL query. 
    It takes a single argument, which is the column name, and returns the average of all the values in that column.
    
    It can be used with the nexts clauses:
    - SELECT: To retrieve the average value of a column from a table.
    - GROUP BY: To calculate the average value for each group of rows in a table.
    - HAVING: To filter the results of a query based on the average value of a column.
    ------------------------------------------------------------------------------------------------

    Syntax:
    SELECT AVG(column_name) FROM table_name;

*/

-- Example 1: Calculate the average salary of employees in a company
SELECT AVG(salary) AS average_salary

-- Example 2: Calculate the average price of products in a specific category
SELECT AVG(price) AS average_price
FROM products
WHERE category = 'Electronics';

-- Example 3: Calculate the average age of students in each class
SELECT class, AVG(age) AS average_age
FROM students
GROUP BY class;