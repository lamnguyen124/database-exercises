use employees;

Select distinct title from titles;

select first_name,last_name
from employees
where last_name like 'e%e'
group by first_name, last_name;

SELECT last_name, count(last_name) as 'unique'
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
Group by last_name
order by last_name;

select count(gender), gender
from employees
where first_name in ('Irena', 'Vidya','Maya')
group by gender;