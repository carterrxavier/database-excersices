use employees;

#1
select *
from employees
where hire_date =(
select hire_date
from employees
where emp_no = '101010');

#2
select title, to_date
from titles
where emp_no in (select emp_no 
from employees where first_name = 'Aamod') 
and titles.to_date = '9999-01-01';

#3
select count(emp_no)
from dept_emp 
where dept_emp.emp_no in
(select emp_no from employees)
and to_date != '9999-01-01';

#4. Isamu	Legleitner, Karsten	Sigstam, Leon	DasSarma, Hilary	Kambil
select first_name, last_name
from employees 
where emp_no in (
select emp_no
from dept_manager
where to_date = '9999-01-01')
and gender = 'f';


#5
select count(emp_no)
from salaries
where salary > (select avg(salary)
				from salaries 
				where to_date != '9999-01-01')
and to_date = '9999-01-01';


#6
select count(emp_no) as employees
from salaries 
where salary >= (select max(salary) - stddev(salary)
	   from salaries 
	   where to_date = '9999-01-01')
and  to_date = '9999-01-01';













