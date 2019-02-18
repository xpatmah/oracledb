Select * from employees;

SELECT  department_id , avg(salary) from EMPLOYEES group by DEPARTMENT_ID;
 
select employee_id ,department_id , avg(salary) over (partition by department_id) from EMPLOYEES; 
 
select employee_id ,department_id , max(salary) over (partition by department_id) from EMPLOYEES; 
  
select employee_id ,department_id , first_name, ROW_NUMBER() over (partition by department_id order by hire_date) from EMPLOYEES; 
  
select employee_id ,department_id , first_name, RANK() over (partition by department_id  order by first_name ) as ranks , dense_rank()
over (partition by department_id order by first_name) as dens_rannk from Employees;

-- Hirarchical Table Structure

with all_managers as (
    select E.* from Employees E 
    start with e.phone_number = '515.123.4567'
    connect by prior employee_id = manager_id
)
select * from all_managers;

create table NUMBERs (
  num integer
);

insert into NUMBERS values(4);

select * from NUMBERS;

create table Family(
  child_key varchar(30),
  parent_key varchar(30)
);

insert into family values('CHILD-2' ,'PARENTS');

delete from family where CHILD_KEY= 'CHILD-2';
select * from family;
select child_key , parent_key, 0 as levl from family where PARENT_KEY is null;


with familyTable( c_k , p_k , levl) as(
  select child_key , parent_key, 0 as levl from family where PARENT_KEY is null
  union all 
  select child_key, parent_key , fk.levl+1 from family f inner join familyTable fk on fk.c_k = f.parent_key
)
select * from familyTable;

select * from Employees;

with tempTable (emp_id , f_n, m_id , levl ) as
(
    select employee_id , first_name , manager_id , 0 as levl from Employees where manager_id is null
    union all
    select employee_id, first_name , manager_id , levl+1 from Employees e join tempTable t on e.manager_id = t.emp_id
)
search /*breadth*/ Depth first by emp_id set ordr
select emp_id ,f_n,m_id , levl, ordr from tempTable
order by ordr;

select * from employees;
select * from JOBSTATUS;

create table JobStatus2(
   Catagory  number,
   IDD number,
   first_name varchar(20),
   last_name varchar(20)
);

insert all 
  into JobStatus2 values( 1 , Manager_id , first_name , last_name)
  into JobStatus2 values( 1 , Department_id , first_name , last_name)
select * from EMPLOYEES;


insert all
    into JobStatus values (salary,FIRST_name , last_name)
select * from Employees;

select * from JOBSTATUS2;

drop table JobStatus;

truncate table JobStatus;

-- modern data transformation 

select * from CANDYBAR_CONSUMPTION_DATA;

select * from CANDYBAR_CONSUMPTION_DATA 
unpivot (
    stat_value
      for stat_type in ( overall_rating as 1 , number_bars_consumed as 2)
      
) U;

select * from (select * from CANDYBAR_CONSUMPTION_DATA 
unpivot (
    stat_value
      for stat_type in ( overall_rating as 1 , number_bars_consumed as 2)
) U)
pivot(
    SUM(STAT_VALUE)
      for STAT_TYPE IN (1 as overall_rating ,2 as number_bars_consumed)
) U;











  
  