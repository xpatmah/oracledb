--0insert with check option

delete form employee_temp where department_id in (select department_id from departments d natural join locations lo where lo.country_id='UK');

insert into (select d.department_id , d.department_name , d.manager_id,d.location_id 
from departments d where location_id = (select location_id from locations l where l.city = 'Oxford') with check option
) values (2234,'sdfds',203,2500);

-- Corelated delete and update 

delete from employee_temp where department_id in (select department_id from departments d natural join locations lo where lo.country_id='UK');

update employee_temp temp  set (temp.salary , temp.commission_pct) = (select avg(emp.salary), avg(emp.commission_pct) from employee_temp emp join departments d on emp.department_id = d.department_id
    
where temp.department_id = emp.department_id group by d.department_id);