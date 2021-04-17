--[UC1]
create database Payroll_query_problem


--[UC2]
create table employee_payroll
(
id int not null,
name varchar(20) not null,
salary money not null,
start_date date not null);


--[UC3]
 insert into [dbo].[employee_payroll] values
(101, 'john', 100000.00, '2002-04-03'),
(102, 'bob', 200000.00, '2010-12-22'),
(103, 'charlie', 300000.00, '2019-12-19') 


--[UC4]
select * from employee_payroll

--[UC5]
select salary from employee_payroll where name = 'john'
select * from employee_payroll where start_date between CAST('2010-12-22' as date) AND GETDATE()


--[UC6]
alter table employee_payroll add gender char(1)
update employee_payroll set gender = 'M' where name = 'john' or name = 'bob'
update employee_payroll set gender = 'F' where name = 'charlie' 

--[UC7]
select sum(salary) as Sum from employee_payroll where gender = 'M' group by gender;
select avg(salary) as Avg from employee_payroll where gender = 'M' group by gender;
select min(salary)as Min from employee_payroll where gender = 'M' group by gender;
select max(salary) as Max from employee_payroll where gender = 'M' group by gender;
select count(salary) as Count from employee_payroll where gender = 'F' group by gender; 