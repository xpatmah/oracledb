select * from employees;

select manager_id from employees; 

select * from departments;

create table department_temp as (select * from departments);

create table employee_temp as (select * from employees); 

create table job_salaries (
    "YEAR" varchar(10),
    "MONTH" varchar(10),
    JOB_ID integer,
    TOTAL_SALARY number(10)
 );
 
 select * from JOB_SALARIES;

select * from employee_temp;

select * from locations;

select * from user_tables;

select count(*) from dictionary;

select * from user_catalog;

select * from all_objects;

select * from dba_objects;

select * from JOB_HISTORY;


