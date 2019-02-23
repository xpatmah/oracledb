create or replace type myType is table of varchar(30);
create table item_orders(
act_month varchar(10),
store1_item mytype default myType(),
store2_item mytype default myType())
nested table store1_item store as store1
nested table store2_item store as store2;

insert into item_orders values ('january' , mytype('bike','trademill','elliptical'),mytype('trademill','elliptical'));