-- MAX and MIN

/*
    The MAX and MIN functions are used to find the maximum and minimum values in a column.
    They are aggregate functions that return a single value.
    ----------------------------------------------------------------------------------------
    Syntax:
    SELECT MAX(column_name) FROM table_name;
    SELECT MIN(column_name) FROM table_name;
*/

-- Examples

SELECT MAX(salary) FROM employees; -- Find the highest salary
SELECT MIN(salary) FROM employees; -- Find the lowest salary


-- Find the film with the highest replacement cost
SELECT *
FROM sakila.film
WHERE replacement_cost = (
    SELECT MAX(replacement_cost)
    FROM sakila.film
);

-- Find the film with the lowest replacement cost
SELECT *
FROM sakila.film
WHERE replacement_cost = (
    SELECT MIN(replacement_cost)
    FROM sakila.film
);

-- Find the film with the highest rental rate
SELECT *
FROM sakila.film
WHERE rental_rate = (
    SELECT MAX(rental_rate)
    FROM sakila.film
);

-- Find the film with the lowest rental rate
SELECT *
FROM sakila.film
WHERE rental_rate = (
    SELECT MIN(rental_rate)
    FROM sakila.film
);

