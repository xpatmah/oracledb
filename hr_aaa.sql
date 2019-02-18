-- Hirarchical Traversal 

select * from Employees where EMPLOYEE_ID != 103
start with EMPLOYEE_ID = 100
connect by prior employee_id = manager_ID;

--Recursive Queries

create table Num(
  no integer
);

insert into Num values(4);

select * from NUM;

WITH FACTO(Iteration,Factoo) as(
  select 1 as Iteration , n.no as Factoo From NUM n where n.NO=1
  UNION ALL
  SELECT f.Iteration+1 as Iteration, (f.Factoo) * n.no as Factoo from FACTO f JOIN NUM n 
  on  f.Iteration+1 = n.no
)
select * from FACTO;

select 123 as EmployeeId , 123 as ManagerId from dual;

create table employee_regex as select first_name , last_name,email from Employees;

alter table employee_regex add constraint employee_regex check (regexpo_like())
