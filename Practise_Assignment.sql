create database practise;
use practise;
create table Emp
(
EmpId numeric Not Null,
EmpFname varchar(20),
EmpLname varchar(20),
Dept Varchar(20),
Salary numeric,
Project Varchar(20),
Address varchar(20),
DOB date,
Gender varchar(10)
);
drop table Emp;
sp_help Emp;

--1st row
insert into Emp(
EmpID,EmpFname,EmpLname,Dept,Salary,Project,Address,DOB,Gender)
values(1234,'Shadab','Hussain','Manager',1200000,'SAIL','Kolkata','2001-01-17','Male')
--2nd row
insert into Emp(
EmpID,EmpFname,EmpLname,Dept,Salary,Project,Address,DOB,Gender)
values(5678,'Simran','Yadav','Manager',1100000,'SAIL','Kolkata','2001-11-28','Female')
--3rd row
insert into Emp(
EmpID,EmpFname,EmpLname,Dept,Salary,Project,Address,DOB,Gender)
values(1111,'Saloni','Kumari','Manager',1000000,'SAIL','Kolkata','2001-01-17','Female')
--4th row
insert into Emp(
EmpID,EmpFname,EmpLname,Dept,Salary,Project,Address,DOB,Gender)
values(1122,'Wasim','Akram','Manager',900000,'SAIL','Kolkata','2001-01-17','Male')
--5th row
insert into Emp(
EmpID,EmpFname,EmpLname,Dept,Salary,Project,Address,DOB,Gender)
values(1133,'Fatima','Ejaz','Manager',800000,'SAIL','Kolkata','2001-01-17','Female');

select * from Emp;
--For viewing the columns
select EmpID, Name, Salary, ROW_NUMBER() 
OVER (PARTITION BY EmpID,Name,Salary, Order By EmpID as ROW_NUMBER FROM Emp) 
where ROW_NUMBER=1;

--for deleting the columns
Delete EmpID, Name, Salary, ROW_NUMBER() 
OVER (PARTITION BY EmpID,Name,Salary, Order By EmpID as ROW_NUMBER FROM Emp) 
where ROW_NUMBER>1;

