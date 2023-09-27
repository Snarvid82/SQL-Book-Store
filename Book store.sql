-- Retrieve all books with a price greater than $10
SELECT*
FROM books
Where price > 10;

-- Find the total amount spent by each customer in descending order
SELECT customers.customer_id, name, orders.total_amount
FROM customers JOIN orders ON customers.customer_id = orders.customer_id
ORDER BY total_amount DESC;

-- Retrieve the top 3 best-selling books based on the total quantity sold
SELECT title, quantity
FROM books JOIN order_items ON books.book_id = order_items.book_id
ORDER BY quantity DESC
LIMIT 3;

-- Find the average price of books in the Fiction genre
SELECT genre, AVG(price)
FROM books
WHERE genre = 'Fiction';

-- Retrieve the names of customers who have placed orders
SELECT name AS 'Placed Orders'
FROM customers JOIN orders ON customers.customer_id = orders.customer_id
WHERE total_amount > 0;

-- Find the total revenue generated from book sales
SELECT SUM(total_amount) AS 'Total Revenue'
FROM orders;

-- Retrieve the books with titles containing the word “and” (case-insensitive)
SELECT title
FROM books
WHERE title LIKE '%and%';

-- Find the customers who have placed orders worth more than $50
SELECT name, total_amount
FROM customers JOIN orders ON customers.customer_id = orders.customer_id
WHERE total_amount > 50;

-- Retrieve the book titles and their corresponding authors sorted in alphabetical order by author
SELECT title, author
FROM books
ORDER BY author ASC;

-- Find the customers who have not placed any orders
SELECT name AS 'Not Placed Orders'
FROM customers JOIN orders ON customers.customer_id = orders.customer_id
WHERE total_amount = 'NULL';