-- CONCAT

/*
    The CONCAT function is used to combine two or more strings into a single string.
    It is supported by most SQL databases, though the syntax may vary slightly.

    Syntax:
    SELECT CONCAT(string1, string2, string3, ...) FROM table_name;
*/

-- Example 1: Concatenate first name and last name of employees
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees; -- This will return a single column with the full names of employees.

-- Example 2: Concatenate product name and category
SELECT CONCAT(product_name, ' - ', category) AS product_info
FROM products; -- This will return a single column with product names and their categories.

-- Example 3: Concatenate address fields into a single address
SELECT CONCAT(street, ', ', city, ', ', state, ' ', zip_code) AS full_address
FROM addresses; -- This will return a single column with the full addresses of customers.
