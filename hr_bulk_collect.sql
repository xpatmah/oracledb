declare
type plsinteger is table of pls_integer;
employeeid plsinteger;
begin
select employee_id bulk collect into employeeid from employees;
for indexx in employeeid.first..employeeid.last loop
  dbms_output.put_line(employeeid(indexx));
end loop;
end;