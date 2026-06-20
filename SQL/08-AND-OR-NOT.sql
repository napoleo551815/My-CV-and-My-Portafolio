-- AND, OR, and NOT operators

/*
    The AND operator is used to filter records based on multiple conditions. It returns true only if all the conditions are true.

    The OR operator is used to filter records based on multiple conditions. It returns true if any of the conditions are true.

    The NOT operator is used to filter records that do not meet a specific condition. It returns true if the condition is false.
    ----------------------------------------------------------------------------------------------------------------------------

    Syntax:

    SELECT column1, column2, ...
    FROM table_name
    WHERE condition1 AND condition2 AND condition3;

    SELECT column1, column2, ...
    FROM table_name
    WHERE condition1 OR condition2 OR condition3;

    SELECT column1, column2, ...
    FROM table_name
    WHERE NOT condition;
*/

-- Examples (AND)
SELECT * FROM sakila.customer WHERE first_name = 'John' AND last_name = 'Doe'; -- Find the customer named John Doe
SELECT * FROM sakila.customer WHERE first_name = 'John' AND last_name = 'Doe' AND email = 'john.doe@example.com'; -- Find the customer named John Doe with a specific email
SELECT * FROM sakila.customer WHERE first_name = 'John' AND last_name = 'Doe' AND email = 'john.doe@example.com' AND active = 1; -- Find the customer named John Doe with a specific email and who is active

-- Examples (OR)
SELECT * FROM sakila.customer WHERE first_name = 'John' OR first_name = 'Jane'; -- Find customers named John or Jane
SELECT * FROM sakila.customer WHERE first_name = 'John' OR first_name = 'Jane' OR first_name = 'Bob'; -- Find customers named John, Jane, or Bob
SELECT * FROM sakila.customer WHERE first_name = 'John' OR first_name = 'Jane' OR first_name = 'Bob' OR first_name = 'Alice'; -- Find customers named John, Jane, Bob, or Alice

-- Examples (NOT)
SELECT * FROM sakila.customer WHERE NOT first_name = 'John'; -- Find all customers except those named John
SELECT * FROM sakila.customer WHERE NOT first_name = 'John' AND NOT first_name = 'Jane'; -- Find all customers except those named John or Jane
SELECT * FROM sakila.customer WHERE NOT first_name = 'John' AND NOT first_name = 'Jane' AND NOT first_name = 'Bob'; -- Find all customers except those named John, Jane, or Bob

-- OTHER EXAMPLES 
SELECT * FROM sakila.customer WHERE first_name = 'John' AND (last_name = 'Doe' OR last_name = 'Smith'); -- Find customers named John with last names Doe or Smith
SELECT DISTINCT first_name FROM sakila.customer WHERE first_name = 'John' AND (last_name = 'Doe' OR last_name = 'Smith'); -- Find distinct first names of customers named John with last names Doe or Smith
