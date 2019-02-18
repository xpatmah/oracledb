create or replace procedure countnoofemployee 
is
noofEmployee number;
begin
select count(*) into noofEmployee from employees;
dbms_output.put_line(noofEmployee);
exception 
  when TOO_MANY_ROWS then
  dbms_output.put_line('TOO_MANY_ROWS');
  when INVALID_NUMBER  then
  dbms_output.put_line('INVALID_NUMBER');
  when others then
  dbms_output.put_line('other');
  raise;
  rollback;
end countnoofemployee;