use employees;

select first_name from employees
    where hire_date IN (
        select hire_date from employees
        where emp_no = '101010');

select title from titles
      where emp_no IN (
          select emp_no from employees
          where first_name = 'Aamod');

select first_name, last_name from employees
    where emp_no IN (
        select emp_no from dept_manager
         where emp_no IN(
            select  emp_no from employees
            where gender = 'f' ));

select dept_name from departments
    where dept_no IN(
        select dept_no from dept_manager
            where  to_date > now()
            and emp_no IN (
                select emp_no from employees
                    where gender = 'f'
                )
        );

select first_name, last_name from employees
    where emp_no IN(
        select emp_no from salaries
            where salary IN(
                select max(salary) from salaries
                )
        );
