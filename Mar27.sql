-- Write a stored procedure called give_raise that updates all the employees’ salaries by $1000 but only if the average salary is less than the parameter that is passed in.
-- Check to see if it works by looking at the Employee table before and after each procedure call. 

delimiter $$
create procedure give_raise(in salary_threshold decimal(5, 0))
begin
  declare avg_salary decimal(5, 0);

  select avg(salary) into avg_salary from employee;

  if avg_salary < salary_threshold then
    update employee set salary = salary + 1000;
  end if;
end $$
delimiter ;