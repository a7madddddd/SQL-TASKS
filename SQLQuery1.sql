use Library;
create database Library;
CREATE TABLE Auther(
	autherId INT PRIMARY KEY,
	autherName VARCHAR(20)
);
CREATE TABLE sections(
	sectionsId INT PRIMARY KEY,
	sectionsName VARCHAR(20)
);
INSERT INTO Auther (autherId, autherName) VALUES 
	(1, 'AHMAD'),
	(2, 'MOHAMMED'),
	(3, 'KHALED'),
	(4, 'ADHAM'),
	(5, 'WESAM');
INSERT INTO Sections(sectionsId, sectionsName) VALUES
	(1, 'SECTION1'),
	(2, 'SECTION2'),
	(3, 'SECTION3'),
	(4, 'SECTION4'),
	(5, 'SECTION5');

GO
SELECT * FROM authors;
SELECT * FROM sections;

CREATE TABLE author_sections (
    authorId INT,
    sectionsId INT,
    PRIMARY KEY (authorId, sectionsId),
    FOREIGN KEY (authorId) REFERENCES authors(authorId),
    FOREIGN KEY (sectionsId) REFERENCES sections(sectionsId)
);
INSERT INTO author_sections VALUES
	(1, 1),
	(2, 2),
	(4, 5),
	(1, 4),
	(5, 1),
	(1, 3);
SELECT authers.autherName FROM author_sections
