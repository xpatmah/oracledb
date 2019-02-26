select * from employees where job_id in ('FI_MGR' , 'AD_VP','AD_PRES');

select * from employees where commission_pct is null;

select * from employees where last_name like '_ro%';

select * from employees where salary is not null and commission_pct is null;

select * from employees where salary is not null order by first_name asc;

--Nulls First and nulls last

select * from employees where job_id = 'IT_PROG' order by department_id nulls last;

-- single row function

select upper(first_name) from employees;


