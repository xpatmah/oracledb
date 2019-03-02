-- Queston how to convert date to number and vice versa

select to_number(to_char(sysdate , 'YYYDDMM')), to_char(3232423), to_date(to_char(20120123)) from dual;

-- Question select the new salary if employee has no salary then give 100*multiply by employee ID as new_salary 

select Employee_id, nvl(salary , employee_id*100) new_salary from employees; 

-- Question find out the commission percentage if it is null then use salary if salary is null use employee_id

select nvl2(commission_pct,salary/1000,employee_id/1000) as new_commission_pct from employees;

-- Question find out the employees where first_name and last_name length are equal use nu

select first_name , last_name from employees where nullif(length(first_name) , length(last_name)) is null;

-- Question find out the firstnon null colums 

select  coalesce(commission_pct, salary , manager_id , employee_id) nonnull_colum from employees;

-- Ques Use conditional expression if job_id is IT_PROG appraisal is 10% and AD_PRES 20% others 0%

select employee_id , first_name , last_name , case job_id 
                                              when 'ST_MAN' then salary + salary *1.20 
                                              when 'IT_PROG' then salary + salary *1.20
                                              else salary
                                              end new_salary from employees;
                                             
 --case when () then () when () then () else () end  column_name                                            
select employee_id, first_name , last_name , case when job_id = 'IT_PROG' and salary > 5000 then '10%' else '20%' end appraisal from employees;
               
select * from employees;               
                                             
select sum(employee_id) , job_id, department_id from employees group by job_id , DEPARTMENT_ID;

-- count function ignores the null value
select count(nvl(commission_pct , 0)) from employees;


-- sum() sum(distinct salary) sum(all salary )

select sum(salary) , sum(distinct salary) , sum(all salary) from employees;

select e.manager_id from employees e join departments using (department_id);

select * from countries;

select first_name , last_name , country_name , ls.LOCATION_ID from employees e join departments d on e.department_id = d.department_id 
                          join locations ls on ls.location_id = d.location_id
                          join jobs jbs on jbs.job_id = e.job_id
                          join countries con on con.COUNTRY_ID = ls.COUNTRY_ID;
                          
select e.first_name , m.first_name from employees e join employees m on e.manager_id = m.employee_id;  

--outer join
select * from employees natural join departments;

select * from employees e full outer join departments d on e.department_id = d.department_id; 

select count(1) from employees
union all
select count(1) from departments
union all
select count(1) from employees cross join departments;

SELECT department_id 
FROM employees  NATURAL JOIN departments
WHERE first_name = 'Alexis'
AND last_name = 'Bull';
