set serveroutput on;

DECLARE
  a_first_name employees.first_name%type;
  qlast_name employees.last_name%type;
  dBusinessDate Date;
  empRFec employees%Rowtype;
  TYPE EmppRecordTable 
    is Table of employees.last_name%TYPE
    INDEX by SIMPLE_INTEGER;
  employeeLisrt EmppRecordTable;
  Type EmpRecord 
    is record (
    first_name EMPLOYEES.FIRST_NAME%Type
    );
     -- User Defined Type
    Type EmpRecord2 
    is record (
    last_name EMPLOYEES.last_name%Type,
    modified_firstName EmpRecord
    );
   
BEGIN
  For i in 1..1000 LOOP
     SELECT FIRST_NAME,last_name into employeeLisrt(1) , qlast_name  FROM EMPLOYEES where employee_id = 213; 
     dbms_output.put_line(employeeLisrt(1) );
  END LOOP;
END;
  
