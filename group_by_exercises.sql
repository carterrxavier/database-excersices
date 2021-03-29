use employees;

#2  --7 Unique titles
select distinct title 
from titles;

#3
select count(*), last_name 
from employees 
where last_name like 'e%e'
group by last_name;

#4 
select count(*) as count,first_name, last_name 
from employees 
where last_name like 'e%e'
group by last_name, first_name
order by count desc;

#5 -- Chleq, Linqviste, Qiwen
SELECT distinct last_name
from employees 
where last_name like '%q%' and last_name not like '%qu%';

#6
select count(*) as Last_name_shared , last_name 
from employees 
where last_name like '%q%' and last_name not like '%qu%'
group by last_name;


#7
select count(first_name) as count, first_name, gender
from employees 
where first_name = 'Irena' or first_name = 'vidya' or first_name = 'maya'
group by first_name, gender;


#8 -- duplicates exist. 6 duplicates
select count(*) as duplicates, concat(lower(substr(first_name, 1, 1)), lower(substr(last_name, 1,4)), '_', substr(birth_date, 6,2), substr(birth_date, 3,2)) as username, first_Name, last_name, birth_date
from employees
group by username, first_name, last_name, birth_date
having duplicates > 1;







