# SQL-ASSIGNMENT-3
SQL ASSIGNMENT DML 
Overview
This assignment involves creating and managing a database for storing information about managers. The main tasks include creating a table, inserting records, and querying data based on various conditions.

Database Structure
Database: Sales
The primary table created in this database is Managers, which contains the following fields:

Manager_Id: INT, Primary Key, Auto-incremented
First_name: VARCHAR(255), Not Null
Last_Name: VARCHAR(255), Not Null
DOB: DATE, Not Null
Age: INT, Not Null, with a CHECK constraint to ensure age is non-negative
Last_update: TIMESTAMP, automatically updated to the current timestamp
Gender: CHAR(1), with a CHECK constraint to allow only 'M' or 'F'
Department: VARCHAR(255), Not Null
Salary: DECIMAL(10, 2), Not Null
