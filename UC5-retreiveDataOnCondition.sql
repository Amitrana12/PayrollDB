use payroll_service
select * from employee_payroll where name='Amit'
select * from employee_payroll where start_date between CAST('2018-01-01' as date) AND CAST('2020-01-01' as date);