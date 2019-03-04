--DML Statement
insert into person_temp(name,id_person,oid_person) values (null ,12 , 345);

insert into person_temp select * from person_temp2;

insert into person_temp (name , id_person) select name , id_person from person_temp2 where name is not null;

--update statement

update person_temp set name='local' where id_person is null;

update person_temp set (name,id_person) = (select name , id_person from person_temp2) where id_person is not null; 

--For update clouse
select * from employees where job_id='IT_PROG' for update nowait;
commit;

select * from employees where job_id='IT_PROG' for update nowait;
rollback;

select first_name , last_name from employees e join departments d on e.department_id = d.department_id for update of first_name, last_name nowait; 
rollback;

create table org_table(
  ord_id number,
  org_name varchar(30),
  org_ceo varchar(30),
  no_of_emp number,
  org_location number,
  org_city_code number,
  org_operational_currency_code number
)
-- Mnemonic for constraints
-- P please F friends ko bolo Not null Constraint Use kare

create table org_table(
  org_id number not null unique,
  org_name varchar(30) constraint not_null2 unique,
  org_ceo varchar(30),
  no_of_emp number constraint not_null not null,
  org_location number,
  org_city_code number,
  org_operational_currency_code number,
  unique(org_location),
  constraint unique_more_column unique (org_ceo,org_location),
  constraint primary_key_c primary key (org_id , org_ceo),
  constraint forign_key foreign key(org_location) references locations(location_id) on delete set null
)

drop table org_table;

create table org_table(
  org_id number not null unique,
  org_name varchar(30) constraint not_null2 unique,
  org_ceo varchar(30),
  no_of_emp number constraint not_null not null,
  org_location number,
  org_city_code number,
  org_operational_currency_code number,
  unique(org_location),
  constraint unique_more_column unique (org_ceo,org_location),
  constraint primary_key_c primary key (org_id , org_ceo),
  constraint forign_key foreign key(org_location) references locations(location_id) on delete cascade
)

create table org_table(
  org_id number not null unique,
  org_name varchar(30) constraint not_null2 unique,
  org_ceo varchar(30),
  no_of_emp number constraint not_null not null,
  org_location number,
  org_city_code number,
  org_operational_currency_code number,
  unique(org_location),
  constraint unique_more_column unique (org_ceo,org_location),
  constraint primary_key_c primary key (org_id , org_ceo),
  constraint forign_key foreign key(org_location) references locations(location_id) on delete cascade,
  constraint min_emp check(no_of_emp>3000)
)

drop table org_table;