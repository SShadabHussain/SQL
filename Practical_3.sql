--Q-01
--- a.
create database Banking;
use Banking;
create table Deposit(
actno varchar(5),
cname varchar(18),
bname varchar(18),
amount numeric(8,2),
adate Date
);
--- b.
create table Branch(
Bname varchar(15),
City varchar(18)
);
--- c.
create table customer(
Cname varchar(15),
City varchar(18)
);
--- d.
create table Borrow(
Loanno varchar(5),
Cname varchar(18),
Bname varchar(18),
Amount numeric(8,2)
);


--Q-02
--- a.
Insert into Deposit values ('106', 'Sandip', 'Andheri', 2000, '1996-03-31');
Insert into Deposit values ('107', 'Shivani', 'Virar', 1000, '1995-09-05');
Insert into Deposit values ('108', 'Kranti', 'Nehru place', 5000, '1995-07-02');
Insert into Deposit values ('109', 'Naren', 'powai', 7000, '1995-08-10');
select * from Deposit;
--- b.
Insert into Branch values ('Dharampeth', 'Nagpur');
Insert into Branch values ('M.G.Road', 'Bangalore');
Insert into Branch values ('Nehru place', 'Delhi');
Insert into Branch values ('Powai', 'Bombay');
Insert into Branch values ('Newtown', 'Kolkata');
select * from Branch;
--- c.
Insert into Customer values ('Pramod', 'Nagpur');
Insert into Customer values ('Sandip', 'Surat');
Insert into Customer values ('Shivani','Bombay');
Insert into Customer values ('Kranti', 'Bombay');
Insert into Customer values ('Naren', 'Bombay');
select * from Customer;
--- d.
Insert into Borrow values ('375', 'Pramod', 'Virar', 8000);
Insert into Borrow values ('481', 'Kranti', 'Nehru place', 3000);
select * from Borrow;


-- Q-03
--- a.List the total loan amount taken by borrowers.
select sum (Amount) as Total_Loan From Borrow;
--- b.Find the total deposit done by depositors.
select sum (Amount) as Total_Deposit from Deposit;
--- c. List the total loan taken from Andheri branch.
select sum (Amount) as Total_Loan_Andheri From Borrow where Borrow.Bname='Andheri';
--- d. Write a query to find the total deposit of customer having account date later than 1-jan-96.
select sum (Amount) from Deposit where adate >= '1996-01-01';
--- e. Find the total deposit of customers living in city Nagpur.
select sum (Amount) from Deposit where branch.city = 'Nagpur';
--- f. List the max deposit of customers living in Bombay.
	
--- g. Find the total number of branch cities.
