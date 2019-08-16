select u.name as 'user_name', r.name as 'role_name'
from users AS u
         join roles AS r ON u.role_id = r.id;

select *
from users as u
         left join roles as r on u.role_id = r.id;

select *
from users u
         right join roles r on r.id = u.role_id;

select * from users;
select * from roles;

insert into users(role_id, email, name) values(2, 'email1', 'user1');
insert into users(role_id, email, name) values(2, 'email2', 'user2');
insert into users(role_id, email, name) values(2, 'email3', 'user3');
insert into users(role_id, email, name) values(null, 'no-role@mail.com', 'no-role-user');


select r.name, count(u.role_id) as total
from roles r
         left join users u on r.id = u.role_id
group by r.name
order by total desc;

use employees;

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from dept_manager
         join departments d on dept_manager.dept_no = d.dept_no
         join employees e on dept_manager.emp_no = e.emp_no
where to_date > curdate()
order by d.dept_name;

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from dept_manager
         join departments d on dept_manager.dept_no = d.dept_no
         join employees e on dept_manager.emp_no = e.emp_no
where to_date > curdate() and e.gender = 'f'
order by d.dept_name;

select t.title, count(t.title)
from titles t
         join dept_emp de on de.emp_no = t.emp_no
         join departments d on de.dept_no = d.dept_no
where t.to_date > now()
  and d.dept_name = 'Customer Service'
  and de.to_date > curdate()
group by t.title;


select
    d.dept_name as 'Department Name',
    concat(e.first_name, ' ', e.last_name) as 'Department Manager',
    s.salary
from dept_manager dm
         join departments d on dm.dept_no = d.dept_no
         join employees e on dm.emp_no = e.emp_no
         join salaries s on e.emp_no = s.emp_no
where dm.to_date > curdate()
  and s.to_date > curdate()
order by d.dept_name;