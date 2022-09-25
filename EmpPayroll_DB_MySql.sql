create database payroll_service;
show databases;
use payroll_service;
create table employee_payroll(
  ID int auto_increment,
  Name varchar(50),
  Salary double not null,
  StartDate date not null,
  primary key(ID)
  );
  desc employee_payroll;
  insert into employee_payroll (name, salary, startDate)
values ('Nayana', 30000.00, '2022-06-29');

insert into employee_payroll (name, salary, startDate)
values ('Chaithra', 30000.00, '2022-06-10');

insert into employee_payroll (name, salary, startDate)
values ('Monisha', 30000.00, '2022-06-16');
select * from employee_payroll;
select * from employee_payroll where name='Nayana';

select * from employee_payroll where startDate between '2022-06-12' and Date(now());
alter table employee_payroll add gender char(1);
update employee_payroll set gender = 'F' where id=1;
select * from employee_payroll;
update employee_payroll set gender = 'F' where id=2;
update employee_payroll set gender = 'F' where id=3;
select * from emloyee_payroll;

select sum(salary) from employee_payroll;
select gender, sum(salary) from employee_payroll group by gender;

describe employee_payroll;
drop table employee_payroll;
create table employee_payroll(
  EmployeeID int auto_increment,
  Name varchar(250),
  PhoneNumber varchar(255),
  Adress varchar(255),
  Department varchar(255),
  Gender char(1),
  BasicPay float,
  Deductions float,
  TaxablePay float,
  Tax float,
  NetPay float,
  StartDate Date,
  City varchar(255),
  Country varchar(255),
  primary key(EmployeeID)
  );
  insert into employee_payroll(Name,PhoneNumber,Adress,Department,Gender,BasicPay,Deductions,TaxablePay,Tax,NetPay,StartDate,City,Country)
  values ('Nayana','898765478','Coxtown','Engineer','F',30000,2000,1000,200,18000,'2022-09-23','Bangalore','India');
  select * from employee_payroll;
  select *from employee_payroll where Name='Terisa';
  
