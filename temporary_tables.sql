use florence21;

drop table employees_with_departments;


#1a
create temporary table employees_with_departments as 
select employees.employees.emp_no , employees.employees.first_name, employees.employees.last_name, employees.departments.dept_no , employees.departments.dept_name
from employees.employees join employees.dept_emp on employees.employees.emp_no = employees.dept_emp.emp_no
						 join employees.departments on employees.dept_emp.dept_no = employees.departments.dept_no
limit 100;

#1b
alter table employees_with_departments add full_name  varchar(30);

#1C
update employees_with_departments 
set full_name = concat(first_name, ' ', last_name);

alter table employees_with_departments drop column last_name;
alter table employees_with_departments drop column first_name;

select *
from employees_with_departments;


#2
use florence21;
drop table payment;

create temporary table payment as 
select sakila.payment.* 
from sakila.payment;

alter table payment
modify column amount decimal(7,2);

update payment set amount = amount *100;

alter table payment
modify column amount int;

-- review changes --
select *
from payment;


#3
use florence21;
drop table temp_employees;

-- get and filter current information--
create temporary table temp_employees as 
select departments.dept_name as dept_name, avg(salaries.salary) as current_average
from employees.employees join employees.salaries on employees.employees.emp_no = employees.salaries.emp_no
						 join employees.dept_emp on employees.salaries.emp_no = employees.dept_emp.emp_no
						 join employees.departments on employees.dept_emp.dept_no = employees.departments.dept_no
where salaries.to_date = '9999-01-01'
group by departments.dept_name
order by current_average desc;

-- see current status of table --
select *
from temp_employees;



-- get historcal avg and std--
drop table historical_avg;
create temporary table historical_avg as
select avg(salaries.salary) as average, stddev(salaries.salary) as std
from employees.salaries;



--  add and calculate z score--
alter table temp_employees add historic_avg float;
alter table temp_employees add historic_std float;
alter table temp_employees add z_score float not null;

update temp_employees set historic_avg = (select average from historical_avg);
update temp_employees set historic_std = (select std     from historical_avg);
update temp_employees set z_score = (temp_employees.current_average - historic_avg) / historic_std;

-- review  updates sales best z_score, Human Resources worst -- 
select*
from temp_employees;


