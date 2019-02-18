create or replace function my_function return number as 
roundedValue number;
sysdatetime date;
begin
sysdatetime := sysdate;
select ROUND(2.34) into roundedValue from dual;
dbms_output.put_line(roundedValue);
return roundedValue;
end my_function;