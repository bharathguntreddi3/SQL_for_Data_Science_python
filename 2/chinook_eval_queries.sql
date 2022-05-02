--- THE TABLES DATA IS TAKEN FROM THE CHINOOK DATABASE CHECK OUT THE CHINOOK SCHEMA ER DIAGRAM PROVIDED IN THE IMAGE FILE

-- Find all the tracks that have a length of 5,000,000 milliseconds or more.
SELECT * 
FROM tracks
WHERE milliseconds >= '5000000'

--  Find all the invoices whose total is between $5 and $15 dollars.
SELECT invoiceid,
total
FROM invoices 
WHERE total BETWEEN 5 AND 15;

-- Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.
SELECT * 
FROM customers 
WHERE STATE IN ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY')

-- Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.
SELECT * 
FROM invoices 
WHERE customerid IN (56, 58) AND total BETWEEN 1.00 AND 5.00

-- Find all the tracks whose name starts with 'All'.
SELECT trackid,
name
FROM tracks 
WHERE name LIKE 'ALL%'

-- Find all the customer emails that start with "J" and are from gmail.com.
SELECT email
FROM customers 
WHERE email LIKE 'j%@gmail.com'

--  Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.
SELECT invoiceid,
billingcity,
total
FROM invoices 
WHERE billingcity IN ('Brasília', 'Edmonton', 'Vancouver') 
ORDER BY invoiceid DESC

--  Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order
SELECT customerid,
COUNT(*) AS orders_list
FROM invoices
GROUP BY customerid
ORDER BY orders_list DESC

--  Find the albums with 12 or more tracks.
SELECT albumid,
COUNT(*) as number 
FROM tracks
GROUP BY albumid
HAVING count(*)>=12


