USE employees;

SELECT *
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
AND gender = 'm';

SELECT *
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e' ;


SELECT *
from employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e';


select * from employees where hire_date like '199%' AND birth_date like '%12-25';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%';



