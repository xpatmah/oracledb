select regexp_replace('flgjlf4444dgdfgfgf','\d' , '-') from dual;

select regexp_substr('Hellow My Name is sql', ' [^ ]+ ') from  dual;


select regexp_substr(' Hello 10 Name is sql', '\s([a-zA-Z]+)\s') from  dual;

select regexp_count('flgjlf4444dgdfgfgf','\D') from dual; -- \D for non numeric characters

