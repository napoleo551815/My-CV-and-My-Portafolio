-- SELECT

/*
    The SELECT statement is used to select data from a database. 
    The data returned is stored in a result table, called the result-set. 
    ------------------------------------------------------------------------------

    Syntax:
    The basic syntax of a SELECT statement is as follows:

    SELECT column1, column2, ...
    FROM table_name;

    You can also use '*' to select all columns from the table.

    The use of ';' at the end of the statement is optional in many SQL environments, but
    it is a good practice to include it to indicate the end of the statement.
    
*/

SELECT * FROM users; -- This will retrieve all columns and all records from the 'users' table.
SELECT name, email FROM users; -- This will retrieve only the 'name' and 'email' columns from the 'users' table.
SELECT name FROM users; -- This will retrieve only the 'name' column from the 'users' table.
