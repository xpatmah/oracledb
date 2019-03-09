select * from employees where (employee_id,first_name) = (select employee_id , first_name from employees where upper(first_name)='ALEX' and upper(last_name)='BROWN');

--corelated subquries return the unique values

select * from employees a where salary = (select max(salary) from employees b where b.department_id = a.department_id) order by department_id;

-- EXIST OPERATOR

select * from employees a where exists (select 1 from employees b where a.job_id != 'IT_PROG');


select * from departments d where exists (select * from employees e where d.DEPARTMENT_ID = e.DEPARTMENT_ID)
union all
select department_id , 'NULL NAME', manager_id, 0 from employees where department_id is null;

-- with query syntax

With maxSalary as
(
 select 1 from dual

),maxSalary2 as
(
 select * from maxSalary

),maxSalary3 as
(
 select * from maxSalary2

),maxSalary4 as
(
 select * from maxSalary3

),maxSalary5 as
(
 select * from maxSalary
 union all
 select * from maxSalary2
 union all
 select * from maxSalary3
 union all
 select * from maxSalary4

)select distinct * from maxSalary5;