-- ORDER BY

/*

ORDER BY is a clause used to sort the result set of a query by one or more columns. 
You can specify the sorting order as ascending (ASC) or descending (DESC). By default, the sorting order is ascending.
----------------------------------------------------------------------------------------------------------------

Syntax:

SELECT column1, column2, ...
FROM table_name
ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...;

*/

-- Examples
SELECT * FROM sakila.actor ORDER BY first_name; -- Sort by first_name in ascending order (default)
SELECT * FROM sakila.actor ORDER BY first_name DESC; -- Sort by first_name in descending order
SELECT * FROM sakila.actor ORDER BY last_name ASC, first_name ASC; -- Sort by last_name in ascending order and then by first_name in ascending order
