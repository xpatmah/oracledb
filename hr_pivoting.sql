select * from ( select salary , job_id ,to_char(to_date(hire_date),'YYYY') hire_year from employees)
pivot (
  sum(salary) for JOB_ID in ( 'IT_PROG','AD_VP','PU_CLERK')
)
order by hire_year ;

