create or replace procedure associativearray 
as 
type associative_array is table of VARCHAR2(30) index by simple_integer;

array_one associative_array;
array_two associative_array;

l_index simple_integer:=0;
l_value VARCHAR2(30);

begin

array_one(1) := 'sdfkjfhsfks';
array_one(2) := 'sdfkjfh23sfks';
array_one(3) := 'sdfk23jfhsfks';

l_index := array_one.first;
DBMS_OUTPUT.PUT(',wfw ');
end;