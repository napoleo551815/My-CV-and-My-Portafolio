/* SELECT is used for retrieving data from a database */

SELECT * FROM users;


/* 
The use of '*' retrieves all columns from the specified table, 
while specifying column names allows for retrieving only specific data. 
 */

/* If you want to retrieve specific columns,
 you can do so by listing them after the SELECT keyword. */ 

SELECT name, email FROM users; -- This will retrieve only the 'name' and 'email' columns from the 'users' table.

SELECT name FROM users; -- This will retrieve only the 'name' column from the 'users' table.
