--CREATE TABLE student_courses (
--    student_id INT,
--    course_id INT,
--    enrollment_date DATE,
--    grade CHAR(1),
--    PRIMARY KEY (student_id, course_id)
--);
--go
--INSERT INTO student_courses (student_id, course_id, enrollment_date, grade)
--VALUES (1, 101, '2023-09-01', 'A'),
--       (1, 102, '2023-09-01', 'B'),
--       (2, 101, '2023-09-01', 'A');
go
SELECT * FROM student_courses
WHERE student_id = 1 AND course_id = 101;
