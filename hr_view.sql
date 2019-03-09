create or replace view org_temp_view as select * from org_table where org_operational_currency_code=3123445 with read only;
create or replace view org_temp_view as select * from org_table where org_operational_currency_code=3123445 with  check option;
select * from locations;

insert into org_temp_view values(12362244333,'2323w4232wewq3','323qw232',3232323423,2700,412350,31234453);

select * from org_table;

select * from org_temp_view;

-- Materialized view referesh manually

EXECUTE DBMS_MVIEW.REFRESH('view_name','F');

--create  materialized view abc build immediate refresh fast 
-- FORCE START WITH to_date()
--NEXT sysdate +4
--on commit enable query rewrite on prebuilt org_table as ()  