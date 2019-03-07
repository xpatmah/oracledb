create table family_structure (
person_id number primary key
);

create index temp_idx2 on family_structure(person_id);

-- Function based index 
create index first_name_idx on employees(upper(first_name));

select * from employees where upper(first_name) = 'ALEX';

create index temp_idx on employee_temp(first_name,last_name); 

alter index temp_idx invisible; 

create bitmap index temp_idx2 on employee_temp(first_name,last_name); 

alter index temp_idx2 invisible; 

select * from employee_temp where first_name='Alex' and last_name='Brown';

-- allow table to drop the index while dml operation perform.

drop index temp_idx online;

select * from dictionary where table_name like 'USER%IN%';

select * from USER_IND_COLUMNS;

create or replace force view XYZ_view as select * from XYZ;
drop view XYZ_view;

create or replace view empview_alex as select * from employees where first_name='Alex';

select * from empview_alex;

create or replace view empview_job(first_name, last_name , job_id) as select first_name, last_name , job_id from employees where job_id = 'IT_PROG';

select * from empview_job;
-- Below query will give you the erro because of missmatch of columns
create or replace view empview_job(first_name, last_name , job_id) as select * from employees where job_id = 'IT_PROG';

--Complex view

create or replace view emp_view as select department_name , min(salary) mins , max(salary) maxs from 
employees e join departments d on e.department_id = d.department_id group by department_name;

select * from emp_view;