select * from employees e where 1 = (select count(*) from employees p where e.department_id = p.department_id and e.salary < p.salary);

select * from employees e where not exists (select * from employees s where s.manager_id=e.employee_id); 

with all_maxsalary as
(
  select max(salary) as sal , avg(salary) avg_sal , department_id from employees group by department_id 
)
select * from all_maxsalary;
  
with all_managers(employee,manager,department) as 
(
select employee_id,manager_id,department_id from employees  --anchor query
union all 
select all_managers.employee, employees.manager_id , all_managers.department from all_managers , employees where all_managers.manager = employees.employee_id 
)
select * from all_managers ;

insert into (select d.department_id , d.department_name , 
            d.manager_id , d.location_id from departments d join locations l on d.location_id = l.location_id where l.city='oxford')
   values( 300, 'marketing','200' , '2500')  ;
   
delete from employee_temp where department_id in ( select d.department_id from 
  departments d natural join locations l where l.country_id ='UK');

insert into (select d.department_id , d.department_name , d.manager_id , d.location_id 
  from department_temp d where d.location_id = (select location_id from locations where city = 'Oxford' ) with check option)
    values (300, 'Marketing','145','2500');
    
select * from EMPLOYEE_TEMP;
       
update employee_temp emp set (emp.salary , emp.commission_pct ) = ( select avg(s.salary) , max(s.commission_pct) from employees s where emp.department_id = s.department_id);    

select employee_id , email , coalesce(commission_pct , manager_id, department_id ) as info from employee_temp;

select * from employees where nullif(manager_id,commission_pct) is null;

create table employee_history (
  employee_id number(10) ,
  first_name varchar(40),
  last_name varchar(40),
  hire_date date
);

create table salary_history (
   employee_id number(10) ,
   commission_pct float(5)
);

insert all
  into employee_history values (employee_id, first_name,last_name,hire_date)
  into salary_history values (employee_id, commission_pct)
  select * from employee_temp where job_id='IT_PROG';

select * from employee_history;

