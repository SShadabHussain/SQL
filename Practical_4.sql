use university;
truncate table Students;
truncate table Department;
truncate table Course;
truncate table Batch;
truncate table StudentStatus;

drop table Students;
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
alter table Students add PresentAddress varchar(200);

alter table Students add DeptId int, CourseId int, BatchId int, StatusId int;
exec sp_help 'dbo.Students';
select * from Students;


/*2. Create foreign key constraints on the following columns of Student table:
a. DeptId -- references to DeptId of Department with ON DELETE CASCADE
option*/
alter table Department add primary key(DeptId);
exec sp_help 'dbo.Department';
drop table Department;
create table Department 
(
	DeptId int not null,
	DeptName varchar(50)
);

alter table Students add constraint fk foreign key (DeptId) references Department(DeptId) on delete cascade;
alter table Student2 add f2 int foreign key references Course on update set null;

/*
3. Insert 4 records in each of the four tables.
a. DeptId values: 101,102,103,104
b. CourseId values: 201,202,203,204
c. BatchId values: 301,302,303,304
d. StatusId values: 401,402,403,404
4. Insert 10 records in Student table.
*/

insert into Department values(101,'B.tech'),(102,'BCA'),(103,'MCA'),(104,'Nursing');
insert into Course values(201,'Computer Science'),(202,'Computer Application'),(203,'MCA application'),(204,'Nursing-junior');
insert into Batch values(301,'CSE-AI'),(302,'CSBS'),(303,'BCA-2d'),(304,'MCA-1-F');
insert into StudentStatus values(401,'ACTIVE'),(402,'COMPLETED'),(403,'ACTIVE'),(404,'LEFT');


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



select * from Students as s right join Department as d on s.DeptId=d.DeptId where s.DeptId=101;

delete from Department where DeptId=101;

select * from Students;
--Select records from Course and Student where CourseId = 201
select * form Course as C inner join 
