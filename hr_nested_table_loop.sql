declare
my_type mytype;
cursor getItem is 
select store1_item multiset union distinct store2_item from item_orders where act_month='january';
begin
open getItem;
fetch getItem into my_type;
if 'trademill' member of my_type then
  dbms_output.put_line('True');
end if;
for index_item in my_type.first..my_type.last loop
dbms_output.put_line(my_type(index_item));
end loop;
end;