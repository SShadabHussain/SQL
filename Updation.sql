create database Employee;
use Employee;
create table Emp(
EmpId numeric(10),
name varchar(20),
salary numeric(10),
);

insert into Emp values(
1,'Sam', 100000 )


alter table Emp add TDS int; 

update Emp 
set TDS = salary*0.075;
