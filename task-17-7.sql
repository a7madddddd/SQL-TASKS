CREATE DATABASE Jaradat_Tech_Solutions;
GO

USE Jaradat_Tech_Solutions;
GO

CREATE TABLE  Authors 
(
ID INT PRIMARY KEY IDENTITY (1,1) ,
AuthorName VARCHAR(40)
);

INSERT INTO Authors(AuthorName) VALUES 
      ('Eng.Rahaf'),
	  ('Eng.Mohammad'),
	  ('Eng.Bayan'),
	  ('Eng.Batool'),
	  ('Eng.Rawaa'),
	  ('Eng.Ahmad')

------------------------------------------------------------
CREATE TABLE Books 
(
ID INT PRIMARY KEY IDENTITY (1,1),
Authors_ID int FOREIGN KEY REFERENCES Authors(ID),
BookName VARCHAR(40) UNIQUE
);


INSERT INTO Books(Authors_ID, BookName) VALUES 
    (1, 'SQL'),
    (2, 'C#'),
    (3, 'ASP.NET Web Forms'),
    (4, 'Data Structures'),
    (5, 'Algorithms in Depth'),
    (6, 'Software Engineering Principles'),
    (4, 'CSS'),
    (5, 'C++');
------------------------------------------------------------
CREATE TABLE CategoriesOfBooks 
(
    ID INT PRIMARY KEY IDENTITY (1,1),
    Books_ID INT FOREIGN KEY REFERENCES Books(ID),
    Category VARCHAR(40)
);

INSERT INTO CategoriesOfBooks(Books_ID, Category) VALUES 
    (1, 'Education'),
    (2, 'Programming'),
    (3, 'Web Development'),
    (4, 'Computer Science'),
    (5, 'Computer Systems'),
    (6, 'Software Engineering');
------------------------------------------------------------
CREATE TABLE SectionsOfLibrary 
(
    ID INT PRIMARY KEY IDENTITY (1,1),
    Section VARCHAR(40),
	Books_ID INT FOREIGN KEY REFERENCES Books(ID),
);

INSERT INTO SectionsOfLibrary(Section,Books_ID) VALUES 
    ('Section A1',1),
    ('Section A2',2),
	('Section B1',4),
	('Section B1',5),
	('Section B1',6),
	('Section B2',3);

------------------------------------------------------------
CREATE TABLE Employees 
(
    ID INT PRIMARY KEY IDENTITY (1,1),
    Sections_ID INT FOREIGN KEY REFERENCES SectionsOfLibrary(ID),
    EmpName VARCHAR(40)
);

INSERT INTO Employees(Sections_ID, EmpName) VALUES 
    (1, 'John Doe'),
    (2, 'Jane Smith'),
    (3, 'Michael Brown'),
    (4, 'Linda White'),
	(1, 'Linda Brown'),
	(2, 'Linda Smith');
------------------------------------------------------------
CREATE TABLE Users 
(
    ID INT PRIMARY KEY IDENTITY (1,1),
    UserName VARCHAR(40),
    Books_ID INT FOREIGN KEY REFERENCES Books(ID)
);

INSERT INTO Users(UserName, Books_ID) VALUES 
    ('Alice', 1),
    ('Bob', 2),
    ('David', 4),
    ('Eve', 5),
	('Adam', 6),
	('Ayah', 5),
	('Zaina', 2),
	('Julia', 1),
    ('Frank', 6);
------------------------------------------------------------
--Outer JOIN EXAMPLE :
SELECT Authors.AuthorName as 'Author Name' , Books.BookName as 'Book'
FROM Authors
FULL JOIN Books
ON Authors.ID = Books.Authors_ID;
------------------------------------------------------------
--Inner JOIN EXAMPLE :
SELECT Employees.EmpName as 'Employee Name' , SectionsOfLibrary.Section as 'Section'
FROM Employees
inner JOIN SectionsOfLibrary
ON Employees.Sections_ID = SectionsOfLibrary.ID;

SELECT Books.Authors_ID as 'Author' ,Authors.AuthorName as 'Author Name',Books.BookName as 'Book' , CategoriesOfBooks.Category as 'Category'
FROM CategoriesOfBooks
inner JOIN Books ON Books.ID= CategoriesOfBooks.Books_ID
inner JOIN Authors ON Authors.ID=Books.Authors_ID ;
 
------------------------------------------------------------
--left JOIN EXAMPLE :
SELECT Users.UserName as 'User Name' , Books.BookName as 'Book Name'
FROM Users
left JOIN Books
ON Users.Books_ID = Books.ID;


------------------------------------------------------------
--right JOIN EXAMPLE :
SELECT Books.BookName as 'Book Name', Users.UserName as 'User Name' 
FROM Users
right JOIN Books
ON Users.Books_ID = Books.ID;