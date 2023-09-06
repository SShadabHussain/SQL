create database Bank;
use Bank;
CREATE TABLE DEPOSIT
(
	actno varchar(25),
	cname varchar(18),
	bname varchar(18),
	amount Numeric(8),
	adate date
);
CREATE TABLE BRANCH
(
	Bname varchar(25),
	City varchar(18)
);
CREATE TABLE CUSTOMER
(
	Cname varchar(25),
	City varchar(18)
);
CREATE TABLE BORROW
(
	Loanno varchar(25),
	Cname varchar(18),
	Bname varchar(18),
	Amount numeric(8)
);
INSERT INTO DEPOSIT values (106,'Sandip', 'Andheri', 2000, '1996-03-31');
INSERT INTO DEPOSIT values (107,'Shivani', 'Virar', 1000, '1995-09-05');
INSERT INTO DEPOSIT values (108,'Kranti', 'Nehru place', 5000, '1995-07-02');
INSERT INTO DEPOSIT values (109,'Naren', 'powai', 7000, '1995-08-10');

select * from DEPOSIT;
truncate table DEPOSIT;

INSERT INTO BRANCH values ('Dharampeth','Nagpur');
INSERT INTO BRANCH values ('M.G.Road','Banglore');
INSERT INTO BRANCH values ('Nehru place','Delhi');
INSERT INTO BRANCH values ('powai','Bombay');
INSERT INTO BRANCH values ('Newtown','Kolkata');

select * from BRANCH;

INSERT INTO CUSTOMER values ('Pramod','Nagpur');
INSERT INTO CUSTOMER values ('Sandip','Surat');
INSERT INTO CUSTOMER values ('Shivani','Bombay');
INSERT INTO CUSTOMER values ('Kranti','Bombay');
INSERT INTO CUSTOMER values ('Naren','Bombay');

select * from CUSTOMER;

INSERT INTO BORROW values (375,'Pramod','Virar',8000);
INSERT INTO BORROW values (481,'Kranti','Nehru place',3000);

select * from BORROW;

SELECT SUM(Amount) as "Total Loan Amount" FROM BORROW;

SELECT SUM(amount) as "Total Deposit done by depositors" FROM DEPOSIT;

SELECT SUM(amount) as "Total loan from andheri branch" FROM DEPOSIT WHERE bname='Andheri';

SELECT SUM(amount) as "Total deposit later than 1-Jan-96" FROM DEPOSIT WHERE adate > '1996-01-01' ;

SELECT * FROM CUSTOMER;
SELECT * FROM DEPOSIT;
SELECT * FROM BRANCH;
SELECT * FROM BORROW;


SELECT sum(amount) as "total deposit by customer from nagpur"
from DEPOSIT as D
join CUSTOMER as C on D.cname = C.Cname
where City='Nagpur';

SELECT max(amount) as "Maximum deposit by customer from BOMBAY"
from DEPOSIT as D
join CUSTOMER as C on D.cname = C.Cname
where City='Bombay';

select count(DISTINCT(City)) as "Total number of branch city" from BRANCH;

select count(distinct(City)) as "Total number of customer city" from CUSTOMER;

SELECT bname,amount from DEPOSIT;

SELECT bname, amount FROM DEPOSIT WHERE adate>'1996-01-01';

select count(Cname) as "Total count of Customers" from CUSTOMER;

select count(bname) as "Total count of Depositors branch wise" from DEPOSIT;

SELECT max(amount) as "Maximum loan amount from branch Newtown"
from BRANCH as B
join BORROW as BO on B.Bname = BO.Bname
where B.Bname='Newtown';

SELECT bname,amount from DEPOSIT WHERE amount>4000;

--o


--p
SELECT UPPER(Cname) as "Customer name" from CUSTOMER;

--q
SELECT SUBSTRING('Shivani',5,7) as "Substring of shivani" FROM DEPOSIT WHERE cname='Shivani';

SELECT * FROM DEPOSIT AS D
ORDER BY D.actno ASC;

--r
UPDATE DEPOSIT
SET actno = CONCAT('00', actno)  where actno >= '106';

--t
 SELECT DATEADD(month, 3, '2022-11-15') AS DateAdd;

