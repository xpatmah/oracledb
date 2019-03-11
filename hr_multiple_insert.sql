-- same data in multiple table unconditional insert statement

insert all
into departmentcopy values (to_char(department_id),to_char(manager_id))
into jobcopy values (to_char(job_id),to_char(manager_id))
select * from employees;

-- same data in multiple table conditional insert statement

insert all 
when expression then
into departmentcopy values (to_char(department_id),to_char(manager_id))
when <condition> then
into departmentcopy values (to_char(department_id),to_char(manager_id))
when <condition> then
into departmentcopy values (to_char(department_id),to_char(manager_id))
when <condition> then
into departmentcopy values (to_char(department_id),to_char(manager_id))
select * from table;

-- same data in multiple table conditional insert FIRST statement

insert first 
when expression then
into departmentcopy values (to_char(department_id),to_char(manager_id))
when <condition> then
into departmentcopy values (to_char(department_id),to_char(manager_id))
when <condition> then
into departmentcopy values (to_char(department_id),to_char(manager_id))
when <condition> then
into departmentcopy values (to_char(department_id),to_char(manager_id))
select * from table;

-- Pivoting insert 





