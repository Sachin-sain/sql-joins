create database companydb;

drop  database companydb;

use companydb;

create table customer(
customerid int primary key,
customername varchar(20),
city varchar(20)
);

select *from customer;

insert into customer values(101,  'ashishs', 'kota');
insert into customer values(102,  'ajay', 'ajmer');
insert into customer values(103,  'jay', 'bundi');
insert into customer values(104,  'aman', 'jhalwar');
insert into customer values(105,  'chirag', 'udaipur');
insert into customer values(106,  'deepak', 'jodhpur');
insert into customer values(107,  'rohan', 'jaipur');
insert into customer values(108,  'dinesh', 'alwar');
insert into customer values(109,  'suresh', 'kota');
insert into customer values(110,  'ankit', 'jaipur');

create table orders
(
orderid int ,
customerid int primary key,
orderdate date
);
select *from orders;

insert into orders values(1, 101, '2021-01-05');
insert into orders values(2, 102, '2021-02-10');
insert into orders values(3, 103, '2021-01-04');
insert into orders values(4, 104, '2021-01-08');
insert into orders values(5, 105, '2021-01-09');
insert into orders values(6, 106, '2021-01-05');
insert into orders values(7, 107, '2021-05-12');
insert into orders values(8, 108, '2021-01-05');
insert into orders values(9, 109, '2021-01-03');
insert into orders values(10, 110, '2021-01-04');
select *from orders;

select orders.orderid, customer.customername, orders.orderdate from orders
 inner join customer on orders. customerid=customer.customerid;
 
 select orders.orderdate, customer.city from orders
  inner join customer on orders.customerid=customer.customerid;
  
USE COMPANY
SELECT COUNT(DESIGNATION), SUM(SALARY), DESIGNATION
FROM EMPLOYEEINFO
group by DESIGNATION;
CREATE DATABASE EMPLOYEEINFOBACKUP;
DROP DATABASE EMPLOYEEINFOBACKUP;

 USE EMPLOYEEINFOBACKUP;

 INSERT INTO  EMPLOYEEINFOBACKUP
 SELECT * FROM EMPLOYEEINFO;
 
 CREATE TABLE EMPLOYEEINFOBACKUP(
ID int NOT NULL auto_increment PRIMARY KEY,
EMP_NAME varchar(20) NOT null,
ADDRESS varchar(30) NOT NULL,
CITY varchar(12) NOT NULL,
AGE INT NOT NULL,
DOJ date NOT NULL,
DESIGNATION varchar(40) NOT NULL,
SALARY decimal(12, 2) NOT NULL,
MOBILE_NO varchar(10) NOT NULL);

SELECT *FROM EMPLOYEEINFOBACKUP;
  
  CREATE DATABASE S;
  USE S;
  CREATE TABLE D(
  EMPNAME VARCHAR(30) NOT NULL,
  MOBILE varchar(30) DEFAULT 'MY MOBILE NO IS NOT AVAILABLE'
  );
SELECT * FROM D;
INSERT INTO D(EMPNAME ) VALUES('SACHIN');

CREATE TABLE CHECKEXAMPLE(
EMPNAME varchar(200),
AGE INT, CHECK(AGE>=18)
);
 
 SELECT *FROM CHECKEXAMPLE;
  
  INSERT INTO CHECKEXAMPLE (EMPNAME, AGE) VALUES('SACHIN', 26);
    INSERT INTO CHECKEXAMPLE (EMPNAME, AGE) VALUES('SACHIN', 17);
    
    CREATE TABLE NAZIM(
    ROLLNO INT NOT NULL UNIQUE
    );
    INSERT INTO NAZIM VALUES(123);
        INSERT INTO NAZIM VALUES(123);
    SELECT *FROM NAZIM;
    
  




