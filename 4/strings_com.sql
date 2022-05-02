-- --- THE TABLES DATA IS TAKEN FROM THE CHINOOK DATABASE CHECK OUT THE CHINOOK SCHEMA ER DIAGRAM PROVIDED IN THE IMAGE FILE

-- Pull a list of customer ids with the customer’s full name, and address, along with combining their city and country together. Be sure to make a space in between these two and make it UPPER CASE. (e.g. LOS ANGELES USA)
SELECT customerid,
firstname || ' ' || lastname AS fullname,
UPPER(city || ' ' || country) AS city_country
FROM customers


-- Create a new employee user id by combining the first 4 letters of the employee’s first name with the first 2 letters of the employee’s last name. Make the new field lower case and pull each individual step to show your work.
SELECT firstname,
lastname,
LOWER(SUBSTR(firstname,1,4) || '' || SUBSTR(lastname,1,2)) AS newid
FROM employees

-- Show a list of employees who have worked for the company for 15 or more years using the current date function. Sort by lastname ascending.
SELECT firstname,
lastname,
DATE('now')-hiredate AS workingyears
FROM employees
WHERE workingyears>=15
ORDER BY lastname ASC

-- Profiling the Customers table, answer the following question.
SELECT COUNT(*)
FROM customers 
WHERE firstname IS NULL

-- Find the cities with the most customers and rank in descending order.
SELECT city, COUNT(*)
FROM customers
GROUP BY city
ORDER BY COUNT(*) DESC


-- Create a new customer invoice id by combining a customer’s invoice id with their first and last name while ordering your query in the following order: firstname, lastname, and invoiceID.
SELECT
c.firstname || c.lastname || i.invoiceid AS newid
FROM customers c 
INNER JOIN invoices i ON c.customerid=i.customerid
WHERE newid LIKE '%AstridGruber%'
ORDER BY c.firstname, c.lastname, i.invoiceid

