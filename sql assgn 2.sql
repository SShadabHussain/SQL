create table Students
(
	StudentId int,
	Name varchar(100),
	Address varchar(200),
	Phone numeric(10,0),
	Email varchar(50),
	DateOfBirth date,
	DateOfAdmission date,
	DateOfPassing date
);
exec sp_help 'dbo.Students';

exec sp_help 'dbo.Department';

truncate table Students;


drop table Students;


select * from Students;

alter table Students add PresentAddress varchar(200);
create table Department 
(
	DId int,
	DeptName varchar(50)
);
create table Course
(
	CourseId int,
	CourseName varchar(50)
);
create table Batch
(
	BatchId int,
	BatchName varchar(50)
);
create table StudentStatus
(
	StatusId int,
	StatusDesc varchar(50)
);

insert into Department values(101,'B.tech'),(102,'BCA'),(103,'MCA'),(104,'Nursing');
insert into Course values(201,'Computer Science'),(202,'Computer Application'),(203,'MCA application'),(204,'Nursing-junior');
insert into Batch values(301,'CSE-AI'),(302,'CSBS'),(303,'BCA-2d'),(304,'MCA-1-F');
insert into StudentStatus values(401,'ACTIVE'),(402,'COMPLETED'),(403,'ACTIVE'),(404,'LEFT');


select * from Course;
select * from Batch;
select * from StudentStatus;

SELECT * FROM Department;

alter table Students add DeptId int, CourseId int, BatchId int, StatusId int;

select * from Students;

truncate table students;

insert into Students values(3001,'Simmi','15 deodar street kolkata 700019',9051241790,'sy63@gmail.com','2000-1-8','2020-04-24','2024-08-08','15 deodar street kolkata 700019',101,201,301,401);
insert into Students values(3002,'Ria','72/1 topsia road street kolkata 700089',8044441790,'ria29@gmail.com','2000-1-8','2020-04-24','2024-08-08','72/1 topsia road street kolkata 700089',102,202,302,402);
insert into Students values(3003,'Shadab','12/5 karunamoyee complex kolkata 700048',8951341790,'shadab17@gmail.com','2001-1-17','2020-04-24','2024-08-08','12/5 karunamoyee complex kolkata 700048',103,203,303,403);
insert into Students values(3004,'Nancy','2 deodar street kolkata 700019',7851241770,'nancy67@gmail.com','2002-1-19','2020-04-24','2024-08-08','2 deodar street kolkata 700019',102,201,304,404);
insert into Students values(3005,'Neha','4C tagore park kolkata 700084',9836692349,'neha19@gmail.com','1999-1-28','2019-05-24','2021-08-08','4C tagore park kolkata 700084',101,205,302,402);

insert into Students values(3006,'Tripti','19/a deodar street kolkata 700029',9051241790,'tripti3@gmail.com','2000-1-8','2020-04-24','2024-08-08','19/a deodar street kolkata 700029',103,203,303,405);
insert into Students values(3007,'Sweety','72 hazra road street kolkata 700079',8044441790,'sweety09@gmail.com','2002-5-18','2020-04-24','2024-08-08','72 hazra road street kolkata 700079',101,201,302,401);
insert into Students values(3008,'Saloni','5 karunamoyee complex kolkata 700078',8951341790,'saloni22@gmail.com','2001-1-17','2020-04-24','2024-08-08','5 karunamoyee complex kolkata 700078',102,201,303,404);
insert into Students values(3009,'Shruti','2/B deodar street kolkata 700039',7851241770,'shruti02@gmail.com','2002-1-19','2020-04-24','2024-08-08','2/B deodar street kolkata 700039',101,201,301,402);
insert into Students values(3010,'Fatima','8C tagoria park kolkata 700014',9836692349,'fatima556@gmail.com','1999-1-8','2019-05-24','2021-08-08','8C tagoria park kolkata 700014',101,201,301,401);


select s.StudentId, s.Name, s.DeptId, d.DeptName from Students AS s inner join Department as d on s.DeptId= d.DId;



select c.CourseName, s.StudentId, s.name, s.CourseId from Students AS s right join Course as c  on s.CourseId=c.CourseId where s.CourseId is null;

select  s.StudentId, s.name,St.StatusId from Students AS s left join StudentStatus as St  on s.StatusId=St.StatusId where St.StatusId is null;

select *from  Students as s right join StudentStatus as St on s.StatusId=St.StatusId where s.StatusId=402 and s.DeptId=101 and s.BatchId=302;
