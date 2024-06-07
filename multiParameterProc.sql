--CREATE TABLE Students (
--    StudentID INT PRIMARY KEY,
--    FirstName NVARCHAR(50),
--    LastName NVARCHAR(50),
--    Age INT,
--    Grade FLOAT
--);
--go
--INSERT INTO Students (StudentID, FirstName, LastName, Age, Grade)
--VALUES 
--    (1, 'John', 'Doe', 18, 90.5),
--    (2, 'Jane', 'Smith', 17, 88.2),
--    (3, 'Alice', 'Johnson', 16, 95.0),
--    (4, 'Bob', 'Brown', 18, 87.8);
go

select * from Students;

--CREATE PROCEDURE UpdateStudentGrade
--    @StudentID INT,
--    @NewGrade FLOAT,
--    @OldGrade FLOAT
--AS
--BEGIN
--    UPDATE Students
--    SET Grade = @NewGrade
--    WHERE StudentID = @StudentID AND Grade = @OldGrade;
--END;
go
EXEC UpdateStudentGrade @StudentID = 2, @NewGrade = 90.0, @OldGrade = 88.2;

sp_helptext 'UpdateStudentGrade';
