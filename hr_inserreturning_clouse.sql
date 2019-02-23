create or replace procedure dynamicvariable as
local_valr number := 3333;
begin
dbms_output.put_line(local_valr);
insert into department_temp (department_id , department_name,manager_id,location_id) values (12321,'xyz',9999,3455) return manager_id into local_valr;
dbms_output.put_line(local_valr);
end;



 