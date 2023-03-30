--P1 Using a subquery, find the names of all the tracks for the album "Californication".

Select * from tracks t
where t.AlbumID in (select AlbumID from Albums where Title='Californication' )

----------------------------------------------------------------

--P2 Find the total number of invoices for each customer along with the customer's full name, city and email.

Select C.FirstName, C.LastName,C.City, C.email, count(i.InvoiceID) from Customers C
inner join Invoices i on i.CustomerID = C.CustomerID
--where C.FirstName = 'František'
GROUP BY C.CustomerId --group by C.FirstName, C.LastName,C.City, C.email

-----------------------------------------------------------------

--P3 Retrieve the track name, album, artistID, and trackID for all the albums.

Select t.name, al.title,al.artistID,t.trackID from tracks t
inner join albums al on al.albumID = t.albumID

------------------------------------------------------------------

--P4 Retrieve a list with the managers last name, and the last name of the employees who report to him or her.

Select M.LastName AS Manager, E.LastName AS Employee
FROM Employees E INNER JOIN Employees M 
ON E.ReportsTo = M.EmployeeID

--------------------------------------------------------------------

--P5 Find the name and ID of the artists who do not have albums. 

Select ar.Name AS Artist, ar.ArtistId, al.Title AS Album FROM Artists ar
LEFT JOIN Albums al
ON ar.ArtistId = al.ArtistId
WHERE Album IS NULL

----------------------------------------------------------------------

--P6 Use a UNION to create a list of all the employee's and customer's first names and last names ordered by the last name in descending order.

SELECT FirstName, LastName FROM Employees
UNION
SELECT FirstName, LastName FROM Customers
ORDER BY LastName DESC

-----------------------------------------------------------------------

--P7 See if there are any customers who have a different city listed in their billing city versus their customer city.

SELECT C.FirstName, C.LastName, C.City AS CustomerCity, I.BillingCity FROM Customers C
INNER JOIN Invoices I ON C.CustomerId = I.CustomerId
WHERE CustomerCity != BillingCity

------------------------------------------------------------------------

