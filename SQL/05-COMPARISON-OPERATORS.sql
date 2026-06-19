-- COMPARISON OPERATORS IN SQL

/*
    Comparison operators are used in SQL to compare two values. 
    They are commonly used in the WHERE clause of a SELECT, UPDATE, or DELETE statement to filter records based on specific conditions. 
    ------------------------------------------------------------------------------

    Common Comparison Operators:
    1. = : Equal to
    2. <> or != : Not equal to
    3. > : Greater than
    4. < : Less than
    5. >= : Greater than or equal to
    6. <= : Less than or equal to

*/

-- Examples

SELECT * FROM users WHERE age > 30; -- This will retrieve all users whose age is greater than 30.
SELECT * FROM products WHERE price <= 100; -- This will retrieve all products with a price less than or equal to 100.
SELECT * FROM orders WHERE status = 'shipped'; -- This will retrieve all orders that have a status of 'shipped'.

/*
    You can also combine multiple conditions using logical operators such as AND, OR, and NOT. 
    For example:
*/

-- Examples
SELECT * FROM users WHERE age > 30 AND country = 'USA'; -- This will retrieve all users who are older than 30 and are from the USA.
SELECT * FROM products WHERE price < 50 OR category = 'electronics'; -- This will retrieve all products that are either priced below 50 or belong to the 'electronics' category.
SELECT * FROM orders WHERE NOT status = 'pending'; -- This will retrieve all orders that do not have a status of 'pending'.