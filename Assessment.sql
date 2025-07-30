create database assessment;

use assessment;

create table salesman (salesman_id integer primary key auto_increment,
name varchar(50),
city varchar(50),
commission decimal(5,2));

create table customer(customer_id integer primary key auto_increment,
customer_name varchar(50),
city varchar(50),
grade integer,
salesman_id integer,
foreign key (salesman_id) references salesman (salesman_id));

insert into salesman (salesman_id, name, city, commission) VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12);


insert into customer(customer_id, customer_name, city, grade, salesman_id) VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidore', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', NULL, 5005);

select * from salesman;

select * from customer;

select
	customer.customer_name as customername,
    customer.city as customercity,
    salesman.name as salesmanname,
    salesman.commission as salesmancommission
from
	customer
join
	salesman
on
	customer.salesman_id=salesman.salesman_id;
    























