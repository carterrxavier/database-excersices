use employees;

#2 --first person = Irena Reutenauer, last person Vidya Simmen
select first_name, last_name
from employees 
where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya'
order by first_name asc;

#3 --first peron = Irena Acton , last person Vidya Zweizig
select first_name, last_name
from employees 
where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya'
order by first_name asc, last_name asc;


#4 --first person = Irena Acton , last person  Maya Zyda
select first_name, last_name
from employees 
where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya'
order by last_name asc, first_name asc;

#5 899 employees --first person = Ramzi Erde 10021  , last person Tadahiro Erde 499648
select first_name, last_name, emp_no
from employees 
where last_name like 'e%' and last_name like '%e'
order by emp_no asc;


#6 --899 eployees returned . first person = Teiji Eldridge , last person Sergi Erde
select first_name, last_name, hire_date
from employees 
where last_name like 'e%' and last_name like '%e'
order by hire_date desc;


#7 -- 362 oldest employee hired last = Khun Bernini,   Youngest employee hired first = Douadi Pettis
select first_name, last_name, birth_date, hire_date
from employees
where birth_date like '%-12-25' and hire_date like '199%'
order by `birth_date` asc, hire_date desc;


