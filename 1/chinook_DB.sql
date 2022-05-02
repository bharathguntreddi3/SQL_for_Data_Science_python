-- REFER THE CHINOOK DATABASE ER DIAGRAM FOR JUSTIFICATION OR YOU CAN INSTALL CHINOOK DATABASE USING YUGABYTE

-- Retrieve all the records from the Employees table.
SELECT * 
FROM Employees;

-- Retrieve the FirstName, LastName, Birthdate, Address, City, and State from the Employees table.
SELECT 
FirstName, LastName, Birthdate, Address, City, State
FROM Employees;

-- Retrieve all the columns from the Tracks table, but only return 20 rows.
SELECT * 
FROM Tracks;
