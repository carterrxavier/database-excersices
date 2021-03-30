use join_example_db;





use join_example_db;
#1
select * 
from users join roles on users.role_id = roles.id;

#2
select *
from users left join roles on users.role_id = roles.id;

select *
from users right join roles on users.role_id = roles.id;

#3
select count(users.name) as Number_of_people_in_role , roles.name
from users right join roles on users.role_id = roles.id
group by roles.name;


#1
use employees;

#2
select dept_name, concat(first_name, ' ', last_name) as 'Manager Name'
from departments join dept_manager on departments.dept_no = dept_manager.dept_no
				 join employees on dept_manager.emp_no = employees.emp_no
where dept_manager.to_date = '9999-01-01'
order by dept_name;

#3
select dept_name, concat(first_name, ' ', last_name) as 'Manager Name'
from departments join dept_manager on departments.dept_no = dept_manager.dept_no
				 join employees on dept_manager.emp_no = employees.emp_no
where dept_manager.to_date = '9999-01-01' and gender = 'f'
order by dept_name;

#4
select title, count(employees.emp_no) as count
from titles join employees on titles.emp_no = employees.emp_no
		    join dept_emp on employees.emp_no = dept_emp.emp_no
		    join departments on dept_emp.dept_no = departments.dept_no
where titles.to_date = '9999-01-01' and dept_emp.to_date = '9999-01-01' and departments.dept_name = 'Customer Service'
group by title;

#5
select dept_name as 'Department Name', concat(first_name, ' ', last_name) as 'Manager Name',salary
from departments join dept_manager on departments.dept_no = dept_manager.dept_no
				 join employees on dept_manager.emp_no = employees.emp_no
				 join salaries on employees.emp_no = salaries.emp_no
where dept_manager.to_date = '9999-01-01' and salaries.to_date = '9999-01-01'
order by dept_name;

#6
select dept_emp.dept_no as dept_no, dept_name, count(dept_emp.emp_no) as count
from departments join dept_emp on departments.dept_no = dept_emp.dept_no
where dept_emp.to_date = '9999-01-01'
group by dept_no, dept_name;

#7
select dept_name , avg(salary) as salary
from salaries join employees on salaries.emp_no = employees.emp_no
			  join dept_emp on employees.emp_no = dept_emp.emp_no
			  join departments on dept_emp.dept_no = departments.dept_no
			  where dept_emp.to_date = '9999-01-01' and salaries.to_date ='9999-01-01'
group by dept_name
order by salary desc
limit 1;

#8
select first_name , last_name
from salaries join employees on salaries.emp_no = employees.emp_no
			  join dept_emp on employees.emp_no = dept_emp.emp_no
			  join departments on dept_emp.dept_no = departments.dept_no
			  where salaries.to_date ='9999-01-01' and departments.dept_name = "Marketing"
order by salary  desc
limit 1;

#9
select first_name , last_name, salary, dept_name
from salaries join employees on salaries.emp_no = employees.emp_no
			  join dept_manager on employees.emp_no = dept_manager.emp_no
			  join departments on dept_manager.dept_no = departments.dept_no
			  where salaries.to_date ='9999-01-01' and dept_manager.to_date = '9999-01-01'
order by salary  desc
limit 1;

			 
#10 

		
