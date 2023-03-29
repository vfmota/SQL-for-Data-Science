--P1 Find all the tracks that have a length of 5,000,000 milliseconds or more.

select * from Tracks
where Milliseconds >5000000

----------------------------------------------------------------

--P2 Find all the invoices whose total is between $5 and $15 dollars.

select * from Invoices
where total between 5 and 15

-----------------------------------------------------------------

--P3 Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.

Select * from Customers
where State in ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY')

------------------------------------------------------------------

--P4 Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.

Select * from Invoices
where (CustomerId = 56 or CustomerId = 58) and (Total between 1 and 5)

--------------------------------------------------------------------

--P5 Find all the tracks whose name starts with 'All'.

select * from Tracks
where name like 'All%'

----------------------------------------------------------------------

--P6 Find all the customer emails that start with "J" and are from gmail.com.

Select * from Customers
where Email like 'J%@gmail.com'

-----------------------------------------------------------------------

--P7 Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.

Select * from Invoices
where BillingCity in ( 'Brasília', 'Edmonton', 'Vancouver')
order by InvoiceID desc

------------------------------------------------------------------------

--P8 Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.

select CustomerID, count(CustomerID) as conteo from Invoices
group by CustomerID
order by count(CustomerID) desc

-----------------------------------------------------------------------

--P9 Find the albums with 12 or more tracks.

select AlbumID, count(Name) as Conteo from Tracks
group by AlbumID
Having Conteo>11