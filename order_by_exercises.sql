USE employees;

SELECT *
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
AND gender = 'm'
order by last_name, first_name DESC ;

SELECT *
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e'
order by emp_no DESC ;

select *
from employees
where hire_date like '199%'
AND birth_date like '%12-25'
order by birth_date, hire_date DESC;

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';



