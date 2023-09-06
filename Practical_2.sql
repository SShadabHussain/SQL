--01
create database university;
use university;
--02
create table Student
(
StudentId int,
Name varchar(20),
Address varchar(20),
Phone numeric(10,0),
Email varchar(50),
DateOfBirth Date,
DateofAdmission date,
DateofPassing date
);
--03
alter table student add PresentAddress varchar(50);
--04
use master;
create table Department(DeptId int, DeptName varchar(50));
create table Course(CourseId int, CourseName varchar(50));
create table Batch (BatchId INT, BatchName VARCHAR(50));
create table Studentstatus(StatusId int, StatusDesc varchar(50));

--05
alter table Student add DeptId int,CourseId int,BatchId int,StatusId int;
--06
insert into Department values(1011, 'Artificial Intelligence');
insert into Department values(1012, 'CSBS');
insert into Department values(1013, 'Data Science');
insert into Department values(1014, 'IOT');
select * from dbo.Department;

--07
insert into Course values(1, 'OOPS');
insert into Course values(2, 'Automata');
insert into Course values(3, 'DBMS');
insert into Course values(4, 'OS');
select * from dbo.Course;
--08
insert into Batch values(51,'BCS3D');
insert into Batch values(52,'BCS3C');
insert into Batch values(53,'BCS3B');
insert into Batch values(54,'BCS3A');
select * from dbo.Batch;

--09
insert into StudentStatus values(1,'Active');
insert into StudentStatus values(2,'Completed');
insert into StudentStatus values(3,'Inactive');
insert into StudentStatus values(4,'Backlog');
select * from dbo.Studentstatus;

--Q-10
truncate table Student;
select *from Student;
--1st row
insert into Student(
StudentId,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,PresentAddress,DeptID,CourseID,BatchID,StatusID)
values(3037,'Shadab Hussain','Kolkata',12345678,'abcd@gmail.com','2001-08-17','2020-08-01','2024-08-01','Kolkata','1011','3','51','1');
--2nd row
insert into Student(
StudentId,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,PresentAddress,DeptID,CourseID,BatchID,StatusID)
values(3050,'Simran','Kolkata',12345678,'efgh@gmail.com','2001-08-17','2020-08-01','2024-08-01','Kolkata','1011','3','51','1');
--3rd row
insert into Student(
StudentId,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,PresentAddress,DeptID,CourseID,BatchID,StatusID)
values(3024,'Vaibhav','Kolkata',12345678,'ijkl@gmail.com','2001-08-17','2020-08-01','2024-08-01','Howrah','1012','3','54','1');
--4th row
insert into Student(
StudentId,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,PresentAddress,DeptID,CourseID,BatchID,StatusID)
values(3051,'Saloni','Kolkata',12345678,'mnop@gmail.com','2001-08-17','2020-08-01','2024-08-01','Kolkata','1013','3','53','1');
--5th row
insert into Student(
StudentId,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,PresentAddress,DeptID,CourseID,BatchID,StatusID)
values(3038,'Taalish','Kolkata',12345678,'qrst@gmail.com','2001-08-17','2020-08-01','2024-08-01','Kolkata','1014','3','52','2');
--6th row
insert into Student(
StudentId,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,PresentAddress,DeptID,CourseID,BatchID,StatusID)
values(3010,'Fatima','Kolkata',12345678,'uvwx@gmail.com','2001-08-17','2020-08-01','2024-08-01','Hyderabad','1013','3','51','1');
--7th row
insert into Student(
StudentId,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,PresentAddress,DeptID,BatchID,StatusID)
values(3011,'Wasim','Kolkata',12345678,'yz@gmail.com','2001-08-17','2020-08-01','2024-08-01','Bokaro','1012','52','2');
insert into Student(
StudentId,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,PresentAddress,DeptID,CourseID,BatchID,StatusID)
values(3017,'Shruti','Kolkata',12345678,'aabb@gmail.com','2001-08-17','2020-08-01','2024-08-01','Kolkata','1011','3','53','1');
--9th row
insert into Student(
StudentId,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,PresentAddress,DeptID,CourseID,BatchID)
values(3027,'Jayanta','Kolkata',12345678,'aacc@gmail.com','2001-08-17','2020-08-01','2024-08-01','Kolkata','1012','3','52');
--10th row
insert into Student(
StudentId,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,PresentAddress,DeptID,CourseID,BatchID)
values(3057,'Aman','Kolkata',12345678,'aadd@gmail.com','2001-08-17','2020-08-01','2024-08-01','Kolkata','1014','3','54');

--11
select Student.Name,Department.DeptName from Student inner join
master.dbo.Department on Student.DeptId = master.dbo.Department.DeptId;

--12 ---not done
select Student.StudentId, Course.CourseId, Course.CourseName from  master.dbo.Course inner join Student
on Student.CourseId = master.dbo.Course.CourseId where Student.CourseID is null;

--Q-13 --not done
select Student.Name , StudentStatus.StatusDesc from master.dbo.StudentStatus inner join Student 
on StudentStatus.StatusId = StudentStatus.StatusId
where StudentStatus.StatusId is Null;


--Q-14
select Student.Name, Student.StudentId, StudentStatus.StatusDesc
from master.dbo.StudentStatus inner join Student on Student.StatusId = master.dbo.StudentStatus.StatusId 
where master.dbo.StudentStatus.StatusDesc = 'Completed';
drop database university;