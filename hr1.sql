select * from EMPLOYEES;
create or replace view emp24k as select * from Employees where salary >= 24000;
select * from DEPARTMENTS;
select * from emp24k;
create or replace view empsomeAttribute (FIRST_NAME,EMPLOYEE_ID,LAST_NAME) as select FIRST_NAME,EMPLOYEE_ID,LAST_NAME from EMPLOYEES;
select * from EMPSOMEATTRIBUTE;
-- Complex View 
create view complexView as 
select max(salary) as maxSalary , min(salary) as minSalary, department_name from EMPLOYEES join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID group by DEPARTMENTS.department_name; 
select * from COMPLEXVIEW;
select * from SYS.USER_VIEWS;

create or replace view emp0 as select employee_id, first_name,last_name,EMAIL,hire_date, job_id,department_id 
from employees where department_id='80' with check option;
select * from emp0;
insert into emp0 values(207,'Alex', 'Brown','ABROWN',SYSDATE,'IT_PROG',50);
select * from emp0 where employee_id=207;
--preventing DML operation on view
create or replace view temp01 as select first_name, last_name from employees where first_name = 'Alex' with read only;
insert into temp01 values ("trrr" , "sdfdd");
-- Dropping the view 

drop view temp01;

