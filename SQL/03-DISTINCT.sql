-- DISTINCT

/* 
    The DISTINCT keyword is used in a SELECT statement to return only distinct (different) values. 
    It eliminates duplicate records from the result set. 
    This is particularly useful when you want to find unique 
    values in a column or a combination of columns.
    ----------------------------------------------------------------------------------------------

    Syntax:
    SELECT DISTINCT column1, column2, ...
    FROM table_name;
    
*/

SELECT DISTINCT country FROM users; -- This will return a list of unique countries from the 'users' table.
SELECT DISTINCT city, country FROM users; -- This will return a list of unique city-country combinations from the 'users' table.
SELECT DISTINCT age FROM users; -- This will return a list of unique ages from the 'users' table.