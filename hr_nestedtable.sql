declare 
type nestedtable is table of varchar(50);
t_item nestedtable := nestedtable('2222','3333');
begin
  t_item.extend;
  t_item(t_item.last) := 'qe233';
  dbms_output.put_line(t_item(2));
  dbms_output.put_line(t_item(t_item.last));
  t_item.trim;
  dbms_output.put_line(t_item(t_item.last));
end;