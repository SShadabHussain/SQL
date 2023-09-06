--1. Drop and create Student and Department tables. 
--Don’t create Primary key, unique key or foreign key constraints on the tables now.
create database index_assign;
use index_assign;
create table Student
(
	StudentId int,
    StudentName varchar(100),
    Address varchar(200),
    PhoneNo numeric(10,0),
    Email varchar(50),
    DateOfBirth Date,
	DateOfAdmission Date,
	DateOfPassing Date,
	Present_address varchar(200),
	DeptId int
);
--drop table Student;
drop table Student;
drop table Department;
execute sp_help Department;
execute sp_help Student;
create table Department (DeptId INT, DeptName VARCHAR(50));
insert into  Department(DeptId,DeptName)values(101,'CSE'),(102,'ME'),(103,'EE'),(104,'CE');

--2. Create clustered index on studentId column of Student table
--3. Create unique clustered index on deptId column of Department table
create unique clustered index IX_DEPTID on Department(DeptId);
create clustered index IX_STUDENTID on Student(StudentId);

Execute sp_helpindex Student;
Execute sp_helpindex Department;

--6. Insert 10 records in the Student table and 4 records in the Department table.

insert into Student values(3,'Shadab','Bokaro',9876543210,'shadab@gmail.com','2007-01-12','2020-04-3','2024-06-30','Delhi',101);
insert into Student values(2,'Simran','Kolkata',9876543340,'simran@gmail.com','2007-01-12','2020-03-3','2024-06-30','Kolkata',102);
insert into Student values(1,'Saloni','Gaya',9876543670,'saloni@gmail.com','2007-01-12','2020-06-30','2024-06-30','Kolkata',103);
insert into Student values(4,'shyam','Bihar',9000008821,'shyam@gmail.com','2007-01-12','2020-08-30','2024-06-30','Kolkata',104);
insert into Student values(5,'Puspa','Bihar',9800334810,'pushpa@gmail.com','2007-01-12','2020-09-30','2024-06-30','Kolkata',103);
--truncate table Student;
select *from Student;
select *from Department;

--4. Create a nonclustered index on name, address columns of the Student table only for the students whose address is Kolkata.
create nonclustered index NIX_Name on Student(StudentName,Present_address)where Present_address='Kolkata';

--5. Drop and recreate the nonclustered index. Email and phone columns should be added as included columns.
create nonclustered index NIX_EPHONE on Student(PhoneNo asc,Email);

drop index IX_STUDENTID on Student;
drop index NIX_EPHONE on Student;
drop index NIX_Name on Student;

--7. Create a view named vStudentDept to retrieve student id, studentname and
--departname by joining both the tables. WITH SCHEMABINDING option should be added.

create view vStudentDept  with SchemaBinding 
as 
select s.StudentId,s.StudentName,d.DeptName from [dbo].Student as s inner join [dbo].Department as d on s.DeptId=d.DeptId;

execute sp_help vStudentDept;

--8. Retrieve Studentname and departname from vStudentDept view only for CSE department.
select *from vStudentDept;

select StudentName , DeptName from vStudentDept where DeptName='CSE';

--9. Create a unique clustered index on the student id column of vStudentDept view.
create unique clustered index IX_VIEW on vStudentDept(StudentId);

Execute sp_helpindex vStudentDept;

--10. Create a nonclustered index on departname column of vStudentDept view.
create nonclustered index NX_VIEW on vStudentDept(DeptName  asc);