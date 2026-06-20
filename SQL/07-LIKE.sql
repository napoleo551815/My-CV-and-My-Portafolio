-- LIKE

/*
    The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
    It is often used with the % wildcard character to match any sequence of characters.

    The '%' wildcard represents zero or more characters.
    The '_' wildcard represents a single character.
    -----------------------------------------------------------------------------------------

    Syntax:

    SELECT column1, column2, ...
    FROM table_name
    WHERE column_name LIKE pattern;

*/


-- Examples
/* 
    Table: customer

    Columns: 
    costumer_id | store_id | first_name | last_name | email | address_id | active | create_date | last_update
*/

SELECT * FROM sakila.customer WHERE first_name LIKE 'John%'; -- Find all customers whose first name starts with 'John'
SELECT * FROM sakila.customer WHERE last_name LIKE '%son'; -- Find all customers whose last name ends with 'son'
SELECT * FROM sakila.customer WHERE first_name LIKE '%a%'; -- Find all customers whose first name contains 'a'

-- other examples
SELECT * FROM sakila.customer WHERE email LIKE '%@gmail.com'; -- Find all customers whose email is from Gmail
SELECT * FROM sakila.customer WHERE first_name LIKE 'A%'; -- Find all customers whose first name starts with 'A'
SELECT * FROM sakila.customer WHERE last_name LIKE '%n'; -- Find all customers whose last name ends with 'n'
SELECT * FROM sakila.customer WHERE first_name LIKE 'A_n'; -- Find all customers whose first name starts with 'A' and has exactly one character in between
SELECT * FROM sakila.customer WHERE first_name LIKE 'A__n'; -- Find all customers whose first name starts with 'A' and has exactly two characters in between

