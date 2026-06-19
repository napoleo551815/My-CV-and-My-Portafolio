-- WHERE

/*
    The WHERE clause is used to filter records that meet a certain condition. 

    It allows you to specify criteria that the data must meet in order to be
    included in the results of a query.
*/

SELECT * FROM users WHERE country = 'USA'; -- This will return all records from the 'users' table where the country is 'USA'.
SELECT name, email FROM users WHERE city = 'New York'; -- This will return the 'name' and 'email' of users who are located in 'New York'.
SELECT name FROM users WHERE age > 30; -- This will return the names of users who are older than 30 years.
