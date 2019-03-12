select level , lpad(last_name,length(last_name) + (level*2)-2 , '> '),employee_id , first_name, last_name, job_id,manager_id from employees
start with employee_id = 101
connect by prior employee_id = manager_id;

--Prunning 

select level ,employee_id , first_name, last_name, job_id,manager_id from employees 
start with employee_id = 101
connect by prior employee_id = manager_id
and employee_id <> 109
;

--backup of tables

select 'create table '|| table_name||'_Backup'|| ' as select * from ' || table_name || ';' as "backup_script" from user_tables;

