use payroll_service
alter table employee_payroll add gender char(1)
update employee_payroll  set gender ='M' where name = 'Amit' or name = 'Aman' or name = 'Sumit';
select * from employee_payroll;