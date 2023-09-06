create database Assignmnt_06_Shadab;
use Assignmnt_06_Shadab;
Create Table Department(
DeptId INT,
DeptName Varchar(100)
);
Create Table Student(
StudentId INT,
StudentName Varchar(100),
DeptName Varchar(100)
);
Create Table Faculty(
FacultyId INT,
FacultyName Varchar(100),
DeptId INT
);
Create Table Subject(
SubjectId INT,
SubjectName Varchar(100),
FacultyId INT
);
execute sp_help Student;
select *from Department;
select *from Student;
select *from Faculty;
select *from Subject;
truncate table Student;
insert into Department values (1, 'CSBS'), (2, 'CSE'), (3, 'ECE'), (4, 'IT');
insert into Student values (1, 'Shyam', 'CSBS'), (2, 'Ram', 'CSBS'), (3, 'Wasim', 'CSE'), (4,
'Talish', 'ECE');
insert into Faculty values (1, 'Abhishek', 1), (2, 'Arnab', 2), (3, 'Nirmal', 3), (4, 'Jayanta', 4);
insert into Subject values (1, 'DBMS', 1), (2, 'Opetrating System', 2), (3, 'Operational Research',
3), (4, 'Software Engineering', 4);

--Create a stored procedure named usp_getStudentData. 
--It should have an input parameter for deptName and output parameter as student count. 
--The output parameter should be populated with the number of students in the department as sent as the deptName parameter.

create procedure usp_getStudentData
@DeptName varchar(100),
@StudentCount INT Output
As
Begin
Select count(s.DeptName) as StudentCount from Student as s inner join Department as d on
s.DeptName=d.DeptName
where s.DeptName=@DeptName
End

Declare @count INT
Exec usp_getStudentData 'CSBS', @count output

--Alter usp_getStudentData with additional input/output parameters to retrieve the
-- details of the faculties of CSE department who teaches DBMS.
Alter Procedure usp_getStudentData
@DeptName varchar(100), @SubjectName varchar(100)
As
Begin
Select f.FacultyId, f.FacultyName, d.DeptName, s.SubjectName from Faculty as f inner join
Department as d on f.DeptId=d.DeptId
inner join Subject as s on f.FacultyId=s.FacultyId where d.DeptName=@DeptName and
s.SubjectName=@SubjectName
End
usp_getStudentData 'CSBS', 'DBMS'

--Encrypt the procedure usp_getStudentData and try to alter the procedure input parameters with default input parameter values.
Alter procedure usp_getStudentData 
@DeptName varchar(100) with encryption
as
begin
select f.FacultyId, f.FacultyName, d.DeptName from Faculty as f inner join Department as d on
f.DeptId=d.DeptId where d.DeptName=@DeptName
end
usp_getStudentData 'ECE'
sp_helptext usp_getStudentData