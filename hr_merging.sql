merge into table_name tn using (
  select * from (another_table or Join or query)
) ta on tn.attribute = ta.attribute
when matched then
  update command
delete where <conditional>
when not matched then 
insert values
(<get the value out of the table ta>);