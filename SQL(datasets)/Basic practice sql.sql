USE tutorial;
-- 1. Retrive all the books in the "Fiction" genre.
SELECT * FROM books
WHERE Genre="Fiction";

-- 2.Find books publishe after the year 1950
SELECT * FROM books 
WHERE Published_Year>1950;

-- 3.  List all customer from the canada.
SELECT * FROM customers
WHERE Country= "Canada";

-- 4. Show  order place in nov 2023
SELECT * FROM orders
WHERE Order_Date BETWEEN "2023-11-01" AND "2023-11-30";

-- 5. Retrive the total stock of books available
SELECT  SUM(Stock)
FROM books;

-- 6. Find the details  of the most expensive book
SELECT Price FROM books
WHERE Price=(SELECT  MAX(Price) FROM books);

-- 7. Show all customers who ordered more than 1 quantity of a book
SELECT * FROM  orders 
WHERE Quantity>1;

-- 8. Retrive all orders where the total amount exceed $20
SELECT * FROM orders
WHERE Total_Amount>20;


-- 9. List all genres available in the book table
SELECT DISTINCT Genre FROM books;

-- 10. Find the book with lowest Stock.
SELECT MIN(Stock)
FROM books LIMIT 1;

-- 11. Calculate the total revenue generateed from all orders
SELECT SUM(Total_Amount)
FROM orders; 

