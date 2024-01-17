use company;
select * from employee where lname like '___e%' or lname like '__e%' or lname like '_e%'; # 2nd, 3rd, or 4th is e

select fname, lname, salary * 2 from employee; # Where salary is doubled