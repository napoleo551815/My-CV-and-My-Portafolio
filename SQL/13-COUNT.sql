-- COUNT 

/*
    The COUNT function is used to count the number of rows in a table.
    It is an aggregate function that returns a single value.
    ----------------------------------------------------------------------------------------
    Syntax:
    SELECT COUNT(column_name) FROM table_name;

*/

SELECT COUNT(*) FROM employees; -- Count all rows in the employees table
SELECT COUNT(salary) FROM employees; -- Count non-null values in the salary column
