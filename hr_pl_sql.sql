select e.* from employees e;
set serveroutput on;
declare 
empRec  employees%ROWTYPE;
depRec  departments%ROWTYPE;
Type empRecode
  is record (
      empRec  employees%ROWTYPE,
      depRec  departments%ROWTYPE
  );
Type employee_name
  is table of empRecode
  index by simple_integer;
  name_list employee_name;
nhk  employee_name;
vMessage varchar(40);
eValeue number(10) := &enter_value;
evaleue2 number(10) := &enter_salary;
evaleue3 number(10) := &enter_increment;
today_date date := sysdate;
doyouwantincrement boolean :=&DO_you_want_increment;
constant_value number := 208;
constant_salary employees.salary%Type;

begin
select employee_id , first_name , last_name , department_id into  empRec.employee_id , nhk(1).empRec.first_name , empRec.last_name , depRec.department_id from employees 
where employee_id =(&enter_employee_id);
select max(salary) into constant_salary from employees;
    
    if empRec.employee_id > constant_value and doyouwantincrement then
       dbms_output.put_line('Your Salary after increment is '|| (evaleue2 + (evaleue2 * (evaleue3 /100))));
    else if empRec.employee_id < constant_value then
      dbms_output.put_line('NO OUTPUT DUDE');
    end if;
    end if;
dbms_output.put_line(today_date+100);
dbms_output.put_line(constant_salary);
dbms_output.put_line(upper(nhk(1).empRec.first_name) || '  ' || empRec.last_name || ' ' || depRec.department_id );
end;