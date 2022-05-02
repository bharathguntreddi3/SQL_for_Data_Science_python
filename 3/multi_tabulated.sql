-- --- THE TABLES DATA IS TAKEN FROM THE CHINOOK DATABASE CHECK OUT THE CHINOOK SCHEMA ER DIAGRAM PROVIDED IN THE IMAGE FILE

-- find the names of all the tracks for the album "Californication".
SELECT name, t.albumid
FROM tracks t
WHERE t.albumid IN (SELECT a.albumid FROM albums a WHERE a.title='Californication')

-- Find the total number of invoices for each customer along with the customer's full name, city and email.
SELECT count(i.invoiceid),
c.firstname,
c.lastname,
c.city,
c.email
FROM customers c 
INNER JOIN invoices i ON c.customerid=i.customerid
GROUP BY c.customerid

-- Retrieve the track name, album, artistID, and trackID for all the albums.
SELECT t.name, 
al.title,
ar.artistid,
t.trackid
FROM albums al
INNER JOIN tracks t ON al.albumid=t.albumid
INNER JOIN artists ar ON ar.artistid=al.artistid
WHERE t.trackid=12 OR al.title='For Those About to Rock We Salute You'

-- Retrieve a list with the managers last name, and the last name of the employees who report to him or her.
SELECT a.lastname,
b.lastname
FROM employees a
INNER JOIN employees b 
ON b.reportsto=a.employeeid

-- Find the name and ID of the artists who do not have albums. 
SELECT ar.name, al.albumid, ar.artistid
FROM artists ar
LEFT JOIN albums al ON ar.artistid=al.artistid
WHERE al.albumid IS NULL

-- create a list of all the employee's and customer's first names and last names ordered by the last name in descending orde
SELECT firstname, lastname 
FROM employees
UNION 
SELECT firstname, lastname
FROM customers
ORDER BY lastname DESC

-- See if there are any customers who have a different city listed in their billing city versus their customer city.
SELECT COUNT(i.invoiceid),
c.customerid,
c.firstname,
c.lastname,
c.city,
i.billingcity
FROM customers c 
INNER JOIN invoices i ON c.customerid=i.customerid
WHERE c.city!=i.billingcity
GROUP BY c.customerid
