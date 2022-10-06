drop database if exists `booksales`;
create database if not exists `booksales`;
use `booksales`;

DROP TABLE IF EXISTS Publishers;
CREATE TABLE `Publishers` (
`PublisherID` int NOT NULL,
`PublisherName` varchar (50) NULL,
PRIMARY KEY (`PublisherID`)
);

DROP TABLE IF EXISTS Authors;
CREATE TABLE `Authors` (
`AuthorID` int NOT NULL,
`Royalty` float NOT NULL,
`AuthorName` varchar (50) NULL,
PRIMARY KEY (`AuthorID`)
);

DROP TABLE IF EXISTS Genres;
CREATE TABLE `Genres` (
`GenreID` int NOT NULL,
`GenreName` varchar (50) NULL,
PRIMARY KEY (`GenreID`)
);

DROP TABLE IF EXISTS Editors;
CREATE TABLE `Editors` (
`EditorID` int NOT NULL,
`EditorName` varchar (50) NULL,
PRIMARY KEY (`EditorID`)
);

DROP TABLE IF EXISTS Books;
CREATE TABLE `Books` (
`BookID` int NOT NULL,
`BookName` varchar (50) NULL,
`AuthorRoyalty` float NOT NULL,
`PublisherID` int NOT NULL,
`AuthorID` int NOT NULL,
`GenreID` int NOT NULL,
`EditorID` int NOT NULL,
PRIMARY KEY (`BookID`),
FOREIGN KEY (`PublisherID`)
REFERENCES Publishers(PublisherID),
FOREIGN KEY (`AuthorID`)
REFERENCES Authors(AuthorID),
FOREIGN KEY (`GenreID`)
REFERENCES Genres(GenreID),
FOREIGN KEY (`EditorID`)
REFERENCES Editors(EditorID)
);

DROP TABLE IF EXISTS Customers;
CREATE TABLE `Customers` (
`CustomerID` int NOT NULL,
`CustomerName` varchar (50) NULL,
PRIMARY KEY (`CustomerID`)
);

DROP TABLE IF EXISTS Orders;
CREATE TABLE `Orders` (
`OrderID` int NOT NULL,
`CustomerID` int NOT NULL,
`BookID` int NOT NULL,
`OrderDate` varchar (50) NULL,
PRIMARY KEY (`OrderID`),
FOREIGN KEY (`CustomerID`)
REFERENCES Customers(CustomerID),
FOREIGN KEY (`BookID`)
REFERENCES Books(BookID)
);

DROP TABLE IF EXISTS MapBooksAuthors;
CREATE TABLE `MapBooksAuthors` (
`MapBooksAuthorsID` int NOT NULL,
`BookID` int NOT NULL,
`AuthorID` int NOT NULL,
PRIMARY KEY (`MapBooksAuthorsID`),
FOREIGN KEY (`BookID`)
REFERENCES Books(BookID),
FOREIGN KEY (`AuthorID`)
REFERENCES Authors(AuthorID)
);

DROP TABLE IF EXISTS MapBooksEditors;
CREATE TABLE `MapBooksEditors` (
`MapBooksEditorsID` int NOT NULL,
`BookID` int NOT NULL,
`EditorID` int NOT NULL,
PRIMARY KEY (`MapBooksEditorsID`),
FOREIGN KEY (`BookID`)
REFERENCES Books(BookID),
FOREIGN KEY (`EditorID`)
REFERENCES Editors(EditorID)
);

DROP TABLE IF EXISTS MapBooksOrders;
CREATE TABLE `MapBooksOrders` (
`MapBooksOrdersID` int NOT NULL,
`BookID` int NOT NULL,
`OrderID` int NOT NULL,
PRIMARY KEY (`MapBooksOrdersID`),
FOREIGN KEY (`BookID`)
REFERENCES Books(BookID),
FOREIGN KEY (`OrderID`)
REFERENCES Orders(OrderID)
);

SELECT*
FROM Authors
JOIN MapBooksAuthors
	ON Authors.AuthorID = MapBooksAuthors.AuthorID
JOIN Books
	ON Books.BookID = MapBooksAuthors.BookID;
    
SELECT*
FROM Editors
JOIN MapBooksEditors
	ON Editors.EditorID = MapBooksEditors.EditorID
JOIN Books
	ON Books.BookID = MapBooksEditors.BookID;
    
SELECT*
FROM Orders
JOIN MapBooksOrders
	ON Orders.OrderID = MapBooksOrders.OrderID
JOIN Books
	ON Books.BookID = MapBooksOrders.BookID


