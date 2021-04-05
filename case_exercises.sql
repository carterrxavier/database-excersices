use employees;

#1 
select emp_no, group_concat(dept_no, ' ') as department_nums , min(from_date) as from_date , max(to_date) as to_date,
max(if(to_date = '9999-01-01', true, false )) as current_employment
from dept_emp
group by emp_no;



#2
select last_name, 
	case
		when substr(last_name, 1, 1) between 'A' and 'H' then "a-h"
		when substr(last_name, 1, 1) between 'I' and 'Q' then "i-q"
		when substr(last_name, 1, 1) between 'R' and 'Z'then "r-z"
		else 'other'
		end as 'alpha_group'
from employees
order by alpha_group;

#3
select count(emp_no) as number_of_employees,
	case when birth_date like '195%' then '50s'
		 when birth_date like '196%' then '60s'
		 end as  born_in_the
from employees
group by born_in_the;


#bonus 
select dept_name, avg(salary) as salary,
	case when dept_name in ('Customer Service' ) then 'Customer Service'
	  	 when dept_name in ('Finance ' ) then 'Customer Service'
