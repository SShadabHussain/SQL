--joins
use university;
create table Studentsinfo
(
StudentID int Unique Not Null,
StudentName varchar(20)Not Null,
Address varchar(20)Not Null,
Phone numeric(20)Not Null,
Email varchar(50)Not Null,
DateOfBirth Date Not Null,
DateOfAdmission Date Not Null,
DateOfPassing Date Not Null,
DeptName varchar(50)Not Null,
CourseName varchar(50)Not Null,
BatchName varchar(10)Not Null,
StudentStatus varchar(10)Not Null,
Primary key(StudentID),	
);
--Primary key is created using  Primary key (column_name) and '' column_name int UNIQUE ''

insert into Studentsinfo(
StudentID,StudentName,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,DeptName,CourseName,BatchName,StudentStatus)
values(3037,'Shadab Hussain','Kolkata',12345678,'abcd@gmail.com','2001-08-17','2020-08-01','2024-08-01','BTECH-CSE','CSE_AI','BCS3D','ACTIVE');


insert into Studentsinfo(
StudentID,StudentName,Address,Phone,Email,DateOfBirth,DateOfAdmission,DateOfPassing,DeptName,CourseName,BatchName,StudentStatus)
values(3039,'Shahid Hussain','Godda',123,'shadid@gmail.com','2001-09-19','2020-08-11','2024-12-01','BTECH-CSE_AI','CSE_AI','BCS4D','Passed');

update Studentsinfo set StudentID =3039
where Address='Godda';

create table forjoin(
StudentID int not null,
StudentName varchar(20),
marks int, 
result varchar(20)
);


insert into forjoin(
StudentID,StudentName,marks,result)
values(3037,'Shadab Hussain',99,'passed');


insert into forjoin(
StudentID,StudentName,marks,result)
values(3049,'Moin Hussain',100,'passed');


insert into forjoin(
StudentID,StudentName,marks,result)
values(3050,'Guddan Hussain',98,'passed');


insert into forjoin(
StudentID,StudentName,marks,result)
values(3039,'Shahid Hussain',99,'passed');

select * from forjoin;

select * from Studentsinfo 
right join forjoin 
on Studentsinfo.StudentID = forjoin.StudentID;