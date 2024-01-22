# Retrieve the sum of salaries for all employees in department number
use company;
select sum(salary) from employee where dno = 5;

select sum(salary) from employee group by dno order by dno;