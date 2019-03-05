create SEQUENCE U_s_123
  start with 100
  increment by 3
  maxvalue 90000
  cache 50
  nocycle
  noorder;
  
  alter sequence U_s_123 increment by 4 maxvalue 40000 cache 100 cycle order;
  
  drop sequence U_s_123;
  
  select U_s_123.nextval , U_s_123.nextval ,U_s_123.nextval from dual;
select U_s_123.nextval from employees;

create table home_table(
  id_home number default U_s_123.nextval,
  oid_home number ,
  relationship varchar(30)
);

insert into home_table(oid_home,relationship) values (123,'GGH');

insert into home_table values (null,123,'GGH'); -- insert the null value insteed of the sequence value

select * from home_table;