use assign5;
SELECT * from Student;
Drop Table Student;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
Create Table Student(
StudentId INT,
StudentName Varchar(100),
DeptName Varchar(100),
Exam_Marks INT
);
insert into Student values (1, 'Tauquir', 'CSBS', 85), (2, 'Ripan', 'CSBS', 90), (3, 'Soumik',
'CSE', 80), (4, 'Aamir', 'ECE', 100), (5, 'Koyena', 'Bio Tech', 95);

Begin Try
Begin Transaction
Update Student set Exam_Marks = 98 where StudentId = 5
Commit Transaction
End Try
Begin Catch
Rollback Transaction
End Catch

select * from Student;

-- Second Query
Begin Try
Begin Transaction
Update Student set StudentName = 'Kashfa' where StudentId = 5
Commit Transaction
End Try
Begin Catch
Rollback Transaction
End Catch