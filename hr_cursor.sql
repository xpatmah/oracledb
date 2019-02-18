declare 
Type refcursor is ref cursor return departments%rowtype; 
rc_dept_cur refcursor;
rowType_l_department_id  departments%rowtype;
randomcursor sys_refcursor;
CUSTOM_EXCEPTION EXCEPTION;
pragma exception_init(CUSTOM_EXCEPTION , -1456);  
begin
open rc_dept_cur for select * from departments;
open randomcursor for select * from employees;
loop
  fetch rc_dept_cur into rowType_l_department_id;
  exit when rc_dept_cur%notfound;
  dbms_output.put_line(rowType_l_department_id.department_name);
end loop;  
exception
    when CUSTOM_EXCEPTION then
    null;
end;