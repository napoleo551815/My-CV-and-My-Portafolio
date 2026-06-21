# COLUMN CONSTRAINTS IN MYSQL

PK (Primary Key)

* Uniquely identifies each record in a table.
* Cannot contain NULL values.
* Must be unique.

NN (Not Null)

* Prevents a column from containing NULL values.
* The field becomes mandatory.

UQ (Unique)

* Ensures that all values in the column are unique.
* Duplicate values are not allowed.

B (Binary)

* Stores or compares data in binary format.
* Case-sensitive when used with text.

UN (Unsigned)

* Allows only positive numbers and zero.
* Negative values are not permitted.

ZF (Zero Fill)

* Pads numeric values with leading zeros.
* Deprecated in modern MySQL versions.

AI (Auto Increment)

* Automatically generates a new value for each inserted row.
* Commonly used with primary keys.

G (Generated)

* The column value is calculated automatically from an expression.
* Can depend on values from other columns.

Most commonly used constraints:

* PK (Primary Key)
* NN (Not Null)
* UQ (Unique)
* AI (Auto Increment)