#function excersises 

use employees;
#2
select concat(first_name, ' ', last_name) as 'Full_name'
from employees
where last_name like '%e';

#3
select upper(concat(first_name, ' ', last_name)) as 'Full_name'
from employees
where last_name like '%e';

#4
select concat(first_name , ' ', last_name)as 'full_name', birth_date, hire_date, datediff(curdate(),hire_date) as 'Time past since hire date'
from employees
where hire_date like '199%' and birth_date like '%-12-25';

#5
select max(salary), min(salary)
from salaries;

#6
select concat(lower(substr(first_name, 1, 1)), lower(substr(last_name, 1,4)), '_', substr(birth_date, 6,2), substr(birth_date, 3,2)) as username , first_name, last_name, birth_date
from employees
limit 10;



