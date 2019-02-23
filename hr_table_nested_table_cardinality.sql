declare 
 type first_list is table of varchar2(40);
 first_1 first_list := first_list('ererer','errerer','ererererererere');
 first_2 first_list := first_list('erweerer','eqwrrerer','erecverererererere');
begin
 if cardinality(first_1) = cardinality(first_2) then
  dbms_output.put_line('True');
 end if;
end;