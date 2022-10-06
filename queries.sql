use `booksales`;

-- Books per author:

SELECT BookName,  count(BookName) 
FROM Books
WHERE AuthorID = 54374496;

SELECT BookName,  count(BookName) 
FROM Books
WHERE AuthorID = 64441377;

-- Authors per book:

SELECT AuthorID 
FROM Books
WHERE BookID = 197911;

SELECT AuthorID
FROM Books
WHERE BookName = 'The Art of War';

-- Author royalties on a book:

SELECT AuthorRoyalty
FROM Books
WHERE BookID = 824264;

SELECT AuthorRoyalty
FROM Books
WHERE BookID = 226955;

-- Book royalties per author:

SELECT Royalty
FROM Authors
WHERE AuthorName = 'John Steinbeck';

SELECT Royalty
FROM Authors
WHERE AuthorID = 55567755;

-- Books in a genre:

SELECT BookName
FROM Books
WHERE GenreID = 16;

SELECT BookID
FROM Books
WHERE GenreID = 16;

SELECT BookName
FROM Books
WHERE GenreID = 02;

-- Books by publisher:

SELECT BookName
FROM Books
WHERE PublisherID = 34037;

SELECT BookID
FROM Books
WHERE PublisherID = 85628;

SELECT BookName
FROM Books
WHERE PublisherID = 64819;

-- Editors per book:

SELECT EditorID, count(EditorID)
FROM Books
WHERE BookID = 824264;

SELECT EditorID, count(EditorID)
FROM Books
WHERE BookName = 'To Kill a Mockingbird';

-- Books per editor:

SELECT BookName,  count(BookName)
FROM Books
WHERE EditorID = 7772201;

SELECT BookID, count(BookID)
FROM Books
WHERE EditorID = 5777161;

SELECT BookName, count(BookName)
FROM Books
WHERE EditorID = 1764503;

-- Books in an order:

SELECT BookID
FROM Orders
WHERE OrderID = 7771;

SELECT BookID
FROM Orders
WHERE OrderID = 35052;

-- Orders for a book:

SELECT BookID, count(BookID)
FROM Orders
WHERE BookID = 226955;

SELECT BookID, count(BookID)
FROM Orders
WHERE BookID = 956104;

-- Customer orders:

SELECT*
FROM Orders
WHERE OrderID = 7771;

SELECT*
FROM Orders
WHERE OrderID = 35052;

-- Orders per customer:

SELECT CustomerID, count(CustomerID)
FROM Orders
WHERE CustomerID = 806979629;

SELECT CustomerID, count(CustomerID)
FROM Orders
WHERE CustomerID = 766123702;

	
