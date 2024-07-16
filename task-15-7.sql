CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(50),  
    AuthorID INT,
    PublishedYear INT,
    CopiesAvailable INT,
    BookCategory VARCHAR(50) 
);

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    FirstName VARCHAR(50),  
    LastName VARCHAR(50),  
    BirthYear INT
);

INSERT INTO Books (BookID, Title, AuthorID, PublishedYear, CopiesAvailable, BookCategory)
VALUES 
 (1, 'Coding2' , 2, 1990, 100, 'NEW WAY TO CODING'),
 (2, 'Coding3' , 3, 1991, 200, 'NEW WAY TO CODING'),
 (3, 'Coding4' , 4, 1992, 300, 'NEW WAY TO CODING'),
 (4, 'Coding5' , 5, 1993, 400, 'NEW WAY TO CODING'),
 (5, 'Coding6' , 6, 1994, 500, 'NEW WAY TO CODING');

INSERT INTO Authors (AuthorID, FirstName, LastName, BirthYear)
VALUES
(90, 'Ahmad1', 'Onizat', 2000),
(91, 'Ahmad2', 'Onizat', 2001),
(92, 'Ahmad3', 'Onizat', 2002),
(93, 'Ahmad4', 'Onizat', 2003);

SELECT * FROM Authors;

SELECT * FROM Books;

SELECT MAX(CopiesAvailable)
FROM Books;

SELECT AVG(PublishedYear)
FROM Books;

SELECT COUNT(CopiesAvailable)
FROM Books;

TRUNCATE TABLE Books;
DROP TABLE Authors;