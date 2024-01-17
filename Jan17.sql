use company;
select * from employee where lname like '___e%' or lname like '__e%' or lname like '_e%'; # 2nd, 3rd, or 4th is e

select fname, lname, salary * 2 from employee; # Where salary is doubled

select fname, lname, salary * 2 from employee order by salary; # Where salary is doubled

# practice
# get employee with last name that has an "e" as second letter
select lname from employee where lname like '_e%';

# List all employee last names, addresses, and salaries that contain a "b" or "d" anywhere in theri address and who make more than 40k
select lname, address, salary from employee where (address like '%b%' or address like '%d%') and salary > 40000; # and is higher priority than or

# List all employees' last names and birthdates with the birthdates column heading set to be Birthday capitalized that way exactly ordered from youngest employee first
select lname, bdate as Birthday from employee order by Birthday desc; 

# Write a query to list all the employees' last names and salaries if they were all were given a 5 percent raise
select lname, salary * 1.05 from employee ;

# All employees who don't have a supervisor
select * from employee where superssn is null;

# How many different salaries exist
select salary, count(salary) from employee group by salary;

# List all employees' last names and birthdates that were born before 1965
select lname, bdate from employee where bdate < '1965-01-01';
select lname, bdate from employee where year(bdate) < '1965';

# Count how many different salaries exist in the employee table
select essn as 'employee_ssn', count(*) as 'num_dep' from dependent group by essn;

select fname, lname, address from employee where address like 'texas';

select fname, lname from employee where salary > 30000 and salary < 50000;

select fname, lname, address from employee where address like '%TX%';

select lname, salary * 1.05 from employee ;

select fname, lname from employee where salary >= 30000 and salary <= 50000;