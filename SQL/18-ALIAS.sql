-- Alias

/* 
    An alias is a temporary name that you can give to a table or a column in a SQL statement. 
    It is used to make the output more readable or to simplify complex queries. 
    Aliases are created using the AS keyword, but it is optional. 
    When you create an alias for a column, it only exists for the duration of the query.

    Syntax:
    SELECT column_name AS alias_name FROM table_name;
*/

-- Example 1: Create an alias for a column in a SELECT statement
SELECT first_name AS "First Name", last_name AS "Last Name"
FROM employees;

-- Example 2: Create an alias for a table in a SELECT statement
SELECT e.first_name, e.last_name, d.department_name
FROM employees AS e
JOIN departments AS d ON e.department_id = d.department_id;