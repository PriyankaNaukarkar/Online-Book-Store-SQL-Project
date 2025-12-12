-- Import Data From CSV File to SQL table Books

SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE 'E:/TargetDataEngineer2025Dec/SQL 30DaysSatishDhavale/30 Day - SQL Practice Files- SD50/30 Day - SQL Practice Files/Books.csv'
INTO TABLE Books
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- Import Data From CSV File to SQL table Customers

LOAD DATA LOCAL INFILE 'E:/TargetDataEngineer2025Dec/SQL 30DaysSatishDhavale/30 Day - SQL Practice Files- SD50/30 Day - SQL Practice Files/Customers.csv'

INTO TABLE Customers
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Import Data From CSV File to SQL table Orders

LOAD DATA LOCAL INFILE 'E:/TargetDataEngineer2025Dec/SQL 30DaysSatishDhavale/30 Day - SQL Practice Files- SD50/30 Day - SQL Practice Files/Orders.csv'
INTO TABLE Orders
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;