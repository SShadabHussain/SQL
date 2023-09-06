--Q-02
create database university;
USE UNIVERSITY;
--Q-03
create table Student
(
StudentID int Not Null,
Name varchar(20)Not Null,
Address varchar(20)Not Null,
Phone numeric(20)Not Null,
Email varchar(50)Not Null,
DateOfBirth Date Not Null,
DateOfAdmission Date Not Null,
DateOfPassing Date Not Null,
DeptName varchar(50)Not Null,
CourseName varchar(50)Not Null,
BatchName varchar(10)Not Null,
StudentStatus varchar(10)Not Null
);
select * from Student;

--Q-04
--1st row
insert into Student(
StudentID,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,DeptName,CourseName,BatchName,StudentStatus)
values(3037,'Shadab Hussain','Kolkata',12345678,'abcd@gmail.com','2001-08-17','2020-08-01','2024-08-01','BTECH-CSE','CSE_AI','BCS3D','ACTIVE');
--2nd row
insert into Student(
StudentID,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,DeptName,CourseName,BatchName,StudentStatus)
values(3050,'Simran','Kolkata',12345678,'efgh@gmail.com','2001-08-17','2020-08-01','2024-08-01','BTECH-CSE','CSE_AI','BCS3D','ACTIVE');
--3rd row
insert into Student(
StudentID,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,DeptName,CourseName,BatchName,StudentStatus)
values(3024,'Vaibhav','Kolkata',12345678,'ijkl@gmail.com','2001-08-17','2020-08-01','2024-08-01','BTECH-CSE','CSE_AI','BCS3D','ACTIVE');
--4th row
insert into Student(
StudentID,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,DeptName,CourseName,BatchName,StudentStatus)
values(3051,'Saloni','Kolkata',12345678,'mnop@gmail.com','2001-08-17','2020-08-01','2024-08-01','BTECH-CSE','CSE_AI','BCS3D','ACTIVE');
--5th row
insert into Student(
StudentID,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,DeptName,CourseName,BatchName,StudentStatus)
values(3038,'Taalish','Kolkata',12345678,'qrst@gmail.com','2001-08-17','2020-08-01','2024-08-01','BTECH-CSE','CSE_AI','BCS4D','ACTIVE');
--6th row
insert into Student(
StudentID,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,DeptName,CourseName,BatchName,StudentStatus)
values(3010,'Fatima','Kolkata',12345678,'uvwx@gmail.com','2001-08-17','2020-08-01','2024-08-01','BTECH-CSE','CSE_AI','BCS3D','ACTIVE');
--7th row
insert into Student(
StudentID,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,DeptName,CourseName,BatchName,StudentStatus)
values(3011,'Wasim','Kolkata',12345678,'yz@gmail.com','2001-08-17','2020-08-01','2024-08-01','BTECH-CSE','CSE_AI','BCS4D','ACTIVE');
--8th row
insert into Student(
StudentID,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,DeptName,CourseName,BatchName,StudentStatus)
values(3017,'Shruti','Kolkata',12345678,'aabb@gmail.com','2001-08-17','2020-08-01','2024-08-01','BTECH-CSE','CSE_AI','BCS3D','ACTIVE');
--9th row
insert into Student(
StudentID,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,DeptName,CourseName,BatchName,StudentStatus)
values(3027,'Ashikul','Kolkata',12345678,'aacc@gmail.com','2001-08-17','2020-08-01','2024-08-01','BTECH-CSE','CSE_AI','BCS5D','ACTIVE');
--10th row
insert into Student(
StudentID,Name,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,DeptName,CourseName,BatchName,StudentStatus)
values(3057,'Akshat','Kolkata',12345678,'aadd@gmail.com','2001-08-17','2020-08-01','2024-08-01','BTECH-CSE','CSE_AI','BCS3D','ACTIVE');
--Q-05
update Student
set StudentStatus='Completed'
where BatchName='CSBS';
--Q-06
delete from Student where DeptName='';
--Q-07
select * from Student;
--Q-08
select * from Student where not Student.StudentStatus ='Complete';
--Q-09
Truncate table Student;
select * from Student;
--Q10
Drop table Student;
drop database university;