create or replace procedure getNOOFRecord(tableName in varchar2 , noOFValue out number) 
is
l_query varchar(200);
l_count number;
begin
  l_query := 'select count(1) from'||tableName;
  execute immediate l_query into l_count;
  noOFValue :=l_count;
  return;
end;