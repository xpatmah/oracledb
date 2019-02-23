SET SERVEROUTPUT ON
create or replace procedure associativearray 
as 
type associative_array is table of VARCHAR2(30) index by simple_integer;

array_one associative_array;
begin

array_one(1) := 'sdfkjfhsfks';
array_one(2) := 'sdfkjfh23sfks';
array_one(3) := 'sdfk23jfhsfks';
dbms_output.put_line('========');
dbms_output.put_line(array_one(1));
dbms_output.put_line(array_one(2));
dbms_output.put_line(array_one(3));
end;