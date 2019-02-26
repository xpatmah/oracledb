-- Question select the upper case first_name and lower case last_name and initcap of fullname from employee table

select upper(first_name) , lower(last_name) , initcap(first_name||' '||last_name) from employees;

-- Question use LPAD and RPAD with first_name and last_name having - atached to it

select lpad(first_name,10,'-') , rpad(last_name , 10 ,'-') from employees;

-- Question use substring 

select substr(first_name, 0, 2) from employees;

-- Question use concat operator 
select concat(first_name, concat(' ', last_name)) from employees;

-- Question use trim operator

select trim('  This is my to be trim string  ') from dual;

-- Question use ltrim operator

select ltrim('  This is my to be trim string  ') from dual;

-- Question use rrim operator

select rrim('  This is my to be trim string  ') from dual;

-- Question use round operator 

select round(decode(commission_pct, null , 0 , commission_pct)) from employees;

-- Question add 3  month to current date Date function

select add_months(sysdate , 3) from dual;

-- Question find the month between current date and date after 3 month; 

select months_between(sysdate ,add_months(sysdate , 3)) from dual;

-- Question find out the next date after sysdate

select next_day(sysdate, 'WEDNESDAY') from dual;

-- Question what is the difference between the server_date and current_date

select sysdate server_date , current_date session_date , sessiontimezone session_time_zone , current_timestamp from dual;

-- Question addition subtraction with sysdate and current_date is possible ?

select sysdate+123 server_date , current_date -123 session_date , sessiontimezone session_time_zone , current_timestamp from dual;

