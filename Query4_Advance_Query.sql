-- 1) Retrieve the total number of books sold for each genre

SELECT b.Genre , SUM(o.Quantity) AS total_no_of_book FROM Books b
INNER JOIN Orders o 
ON b.Book_ID = o.Book_ID
GROUP BY Genre;

-- 2) Find the average price of books in the "Fantasy" genre
SELECT Genre, ROUND(AVG(Price),2)
FROM Books
GROUP BY Genre
HAVING Genre = 'Fantasy';

-- 3) List customers who have placed at least 2 orders
SELECT c.Customer_ID, c.Name, COUNT(o.Order_ID) as Order_Count
FROM Customers c
INNER JOIN Orders o 
ON c.Customer_ID=o.Customer_ID
GROUP BY c.Customer_ID
HAVING Order_Count>=2
ORDER BY Customer_ID;

-- 4) Find the most frequently ordered book

SELECT b.Book_ID , b.Title, COUNT(o.Order_ID) AS Order_Count FROM Books b
JOIN Orders o 
ON b.Book_ID=o.Book_ID
GROUP BY b.Book_ID
ORDER BY Order_Count DESC LIMIT 1;


-- 5) Show the top 3 most expensive books of 'Fantasy' Genre
SELECT * FROM Books
WHERE Genre = 'Fantasy'
ORDER BY Price DESC LIMIT 3;

-- 6) Retrieve the total quantity of books sold by each author
SELECT b.Author, SUM(o.Quantity) AS Total_Quantity
FROM Books b
JOIN Orders o 
ON b.Book_ID=o.Book_ID
GROUP BY b.Author;

-- 7) List the cities where customers who spent over $30 are located
SELECT DISTINCT c.City, o.Total_Amount FROM Customers c 
JOIN Orders o 
ON c.Customer_ID=o.Customer_ID
WHERE o.Total_Amount > 30
ORDER BY o.Total_Amount;

-- 8) Find the customer who spent the most on orders
SELECT c.Name,SUM(o.Total_Amount) AS total_Spent FROM Customers c 
JOIN Orders o 
ON c.Customer_ID=o.Customer_ID
GROUP BY c.Name
ORDER BY total_Spent DESC LIMIT 1;

-- 9) Calculate the stock remaining after fulfilling all orders
SELECT b.Book_ID, b.Title, b.Stock,coalesce(SUM(quantity),0) AS Order_Quantity, b.Stock-coalesce(SUM(quantity),0) AS Remaining_Quantity
FROM Books b 
LEFT JOIN Orders o
ON b.Book_ID=o.Book_ID
GROUP BY b.Book_ID
ORDER BY b.Book_ID
