#1
use employees;


#2 709 results
select first_name
from employees 
where first_name in ('Irena' ,'Vidya' ,'Maya');


#3 709 results
select first_name
from employees 
where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya';


#4 180241 results
select first_name, gender
from employees 
where gender = 'm'  or (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya');


#5 7330 results
select first_name, last_name
from employees 
where last_name like 'e%';


#6 30723 results
select first_name, last_name
from employees 
where last_name like 'e%' or last_name like '%e';


#6 23393 results end with e but not start with 
select first_name, last_name
from employees 
where last_name not like 'e%' and last_name like '%e';


#7 899 results
select first_name, last_name
from employees 
where last_name like 'e%' and last_name like '%e';

#7 24292 end with e regardless of starting with an e
select first_name, last_name
from employees 
where last_name like '%e';



#8 135214 results
select *
from employees 
where hire_date like '199%';


#9 842 results
select *
from employees
where birth_date like '%-12-25';


#10 362 results
select *
from employees
where birth_date like '%-12-25' and hire_date like '199%';

#11 1873 results
select first_name, last_name
from employees 
where last_name like '%q%';


#12 547 results
select first_name, last_name
from employees 
where last_name like '%q%' and last_name not like '%qu%';








