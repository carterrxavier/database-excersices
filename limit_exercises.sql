#1
use employees;

#2
select distinct last_name 
from employees
order by last_name desc
limit 10;

#3 hired in the 90s, born on christmas - first 5 hired = Alselm Capello, Utz Mandell, Bouchung Schreiter, Baocai Kushner, Petter Stroustrup
select first_name, last_name , hire_date
from employees 
where hire_date like '199%' and birth_date like "%-12-25"
order by hire_date asc
limit 5;


#4 hired in the 90s, born on christmas - 51 - 55 hired = Chirstophe Baca, Moie Bisak, Chikako Ibel, Shounak Jansen, Zhigen Boissier
select first_name, last_name , hire_date
from employees 
where hire_date like '199%' and birth_date like "%-12-25"
order by hire_date asc
limit 5 offset 50;



