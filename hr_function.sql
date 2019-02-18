create or replace procedure function_parameters(departmentid in number , p_status in out number , departmentname out varchar2)
as
cursor deparment_Iterator(department_ID number) is 
(
  select department_name from departments where department_id = department_ID
);
dept_itr deparment_Iterator%rowtype;
begin
open deparment_Iterator(departmentid);
fetch deparment_Iterator into dept_itr;
departmentname := dept_itr.department_name;
p_status := 0;
close deparment_Iterator;
end;
