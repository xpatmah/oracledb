--packages spacification

create or replace package newpackage as

g_active_status constant varchar2(1):='A';

g_inactive_status constant varchar2(1):='A';

cursor get_employee is select employee_id from employees;

end newpackage;