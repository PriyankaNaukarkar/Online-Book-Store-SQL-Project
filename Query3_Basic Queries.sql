-- Basic Queries

-- 1. Retrieve all books in the "Fiction" genre
SELECT *
FROM Books
WHERE Genre = 'Fiction';

-- 2. Find books published after the year 1950

SELECT * 
FROM Books
WHERE Published_Year > '1950';

-- 3. List all customers from the Canada

SELECT * FROM Customers
WHERE TRIM(Country) = 'Canada';

UPDATE Customers
SET Country = REPLACE(Country, CHAR(13), '');

-- 4. Show orders placed in November 2023
SELECT * 
FROM Orders
WHERE Order_Date BETWEEN '2023-11-01' AND '2023-11-30';

-- 5.Retrieve the total stock of books available

SELECT SUM(Stock) as Total_stock FROM Books;

-- 6.Find the details of the most expensive book

SELECT  * FROM Books ORDER BY Price DESC LIMIT 1;

-- 7. Show all customers who ordered more than 1 quantity of a book
SELECT * FROM Orders 
WHERE Quantity > 1;

-- 8.  Retrieve all orders where the total amount exceeds $20

SELECT * FROM Orders WHERE Total_Amount > 20;

-- 9.  List all genres available in the Books table
SELECT DISTINCT Genre FROM Books;

-- 10. Find the book with the lowest stock
SELECT * FROM Books ORDER BY Stock LIMIT 1;

-- 11. Calculate the total revenue generated from all orders
SELECT SUM(Total_Amount) AS Revenue
FROM Orders;



