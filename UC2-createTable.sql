use payroll_service
create table employee_payroll
(
id int not null,
name varchar(25) not null,
salary money not null,
start_date date not null
);
