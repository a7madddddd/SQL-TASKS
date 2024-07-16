CREATE TABLE TeachersInfo(
	TeacherID INT PRIMARY KEY,
	FirstName VARCHAR(30),
	LastName VARCHAR(30)
);
CREATE TABLE TeacherDetails(
	DetailID INT PRIMARY KEY,
	TeacherID INT FOREIGN KEY REFERENCES TeachersInfo(TeacherID),
	Email VARCHAR(30)
);
CREATE TABLE Courses(
	CourseID INT PRIMARY KEY,
	CourseName VARCHAR(30),
	TeacherID INT FOREIGN KEY REFERENCES TeachersInfo(TeacherID),
);
CREATE TABLE Students(
	StudentID INT PRIMARY KEY,
	StudentName VARCHAR(30),
	CourseID INT FOREIGN KEY REFERENCES Courses (CourseID)
);
INSERT INTO TeachersInfo (TeacherID , FirstName, LastName) VALUES
(1, 'AHMAD', 'AHMAD'),
(2, 'MOHAMMED', 'MOHAMMED'),
(3, 'KHALED', 'KHALED'),
(4, 'NOOR', 'NOOR'),
(5, 'ABDULLAH', 'ABDULLAH');
INSERT INTO TeacherDetails (DetailID, TeacherID, Email) VALUES
(1, 1, '123@GMAIL.COM'),
(2, 2, '1234@GMAIL.COM'),
(3, 3, '125@GMAIL.COM'),
(4, 4, '126@GMAIL.COM'),
(5, 5, '127@GMAIL.COM');
INSERT INTO Courses (CourseID, CourseName, TeacherID) VALUES
(1, 'C', 1 ),
(2, 'C', 2 ),
(3, 'C', 3 ),
(4, 'C', 4 ),
(5, 'C', 5 );
INSERT INTO Students (StudentID, StudentName, CourseID) VALUES
(1, 'AHMAD', 1),
(2, 'AHMAD', 2),
(3, 'AHMAD', 3),
(4, 'AHMAD', 4),
(5, 'AHMAD', 5);