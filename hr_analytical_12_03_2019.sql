-- Example without analytical functions by clouse
select e.first_name , e.salary, e.department_id , e.salary , d.avg_salary from employees e join (select department_id , avg(salary) avg_salary from 
employees group by department_id) d on e.department_id = d.department_id; 

select employee_id , first_name, last_name , department_id , hire_date ,  row_number() over (partition by department_id order by hire_date) row_number from employees
where department_id in (10,20,30) order by department_id;

select employee_id , first_name, last_name , department_id , hire_date ,  rank() over (partition by department_id order by hire_date) row_number from employees
where department_id in (10,20,30) order by department_id;

select employee_id , first_name, last_name , department_id , hire_date , salary,  rank() over (partition by department_id order by salary) row_number from employees
order by department_id;

select employee_id , first_name, last_name , department_id , hire_date , salary,  dense_rank() over (partition by department_id order by salary) row_number from employees 
order by department_id;

--Lead and Lag functions

select first_name, last_name , salary , department_id, lead(salary , 2 , 0) over (partition by department_id order by salary nulls last)
from employees;

select first_name, last_name , salary , department_id, lag(salary , 2 , 0) over (partition by department_id order by salary nulls last)
from employees;

select first_name , last_name , department_id , salary , sum(salary) over
(partition by department_id order by salary rows 2 preceding) from employees;

--Windoing clause
--with following you need to give preceding also

select first_name , last_name , department_id , salary , sum(salary) over
(partition by department_id order by salary rows between 1 preceding and 2 following) from employees;