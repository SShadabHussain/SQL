use University;
truncate table Student2;
truncate table StudentStatus;
truncate table Department;
truncate table Course;
truncate table Batch;


alter table Student2 add constraint t_h foreign key(DeptId) references Department(DeptId) on delete cascade;
alter table Student2 add f2 int foreign key references Course on update set null;

insert into Department values(101,'CSE'),(102,'Mechanical'),(103,'Electrical'),(104,'Civil');
insert into Course values (201,'Engineering'),(1002,'M.Tech'),(1003,'MCA'),(1004,'NURSING');
insert into Batch values (301,'F1'),(302,'F2'),(303,'F3'),(304,'F4');
insert into StudentStatus values (401,'active'),(402,'completed'),(403,'Persuing'),(404,'Repeater');
select *from Student2;
delete from Department where DeptId=101;
insert into Student2 values(2001,'Puspa',123456789,'pushpa@gmail.com','2000-05-02','2020-06-20','2024-06-20',101,201,301,401,'Bodhgaya');
insert into Student2 values(2002,'Puspanjali',678456789,'pushpana@gmail.com','2000-05-02','2020-06-20','2024-06-20',102,202,302,401,'Gaya');
insert into Student2 values(2003,'Puspakant',993456789,'puspakant@gmail.com','2000-05-02','2020-06-20','2024-06-20',102,201,303,402,'Kolkata');
insert into Student2 values(2004,'PuspaRaj',887456789,'pusparaj@gmail.com','2000-05-02','2020-06-20','2024-06-20',103,202,304,404,'Ranchi');
insert into Student2 values(2005,'Simran',789456789,'simran@gmail.com','2000-05-02','2020-06-20','2024-06-20',104,201,301,401,'Kolkata');
insert into Student2 values(2006,'Shruti',909456789,'shruti@gmail.com','2000-05-02','2020-06-20','2024-06-20',102,202,302,402,'Ranchi');
insert into Student2 values(2007,'Riya',678456789,'riya@gmail.com','2000-05-02','2020-06-20','2024-06-20',103,203,303,403,'Jamsedpur');
insert into Student2 values(2008,'Deepanjali',987456789,'deepanjali@gmail.com','2000-05-02','2020-06-20','2024-06-20',101,202,304,403,'Dhanbad');
insert into Student2 values(2009,'Kajal',890456789,'kajal@gmail.com','2000-05-02','2020-06-20','2024-06-20',103,204,301,404,'Ranchi');
insert into Student2 values(20010,'Suman',990456789,'suman@gmail.com','2000-05-02','2020-06-20','2024-06-20',104,201,302,404,'Delhi');