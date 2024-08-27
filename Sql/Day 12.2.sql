use classicmodels;
create table emp_udf(Emp_ID int auto_increment primary key,
					 Name varchar(250),
					 DOB varchar(250));
INSERT INTO Emp_UDF(Emp_ID,Name, DOB)
VALUES (1,"Piyush", "1990-03-30"), (2,"Aman", "1992-08-15"), (3,"Meena", "1998-07-28"), (4,"Ketan", "2000-11-21"), (5,"Sanjay", "1995-05-21");


select * from emp_udf;

delimiter //
create function calculate_age(DOB date) Returns varchar(50)
deterministic
begin
declare years int;
declare months int;
declare age varchar(50);

set years = timestampdiff(year,DOB,curdate());
set Months = timestampdiff(month,DOB,curdate()) % 12;
set age = concat(years,' Years ',Months,' Months ');
return age;
end //
delimiter ;



select Emp_id,Name,DOB, Calculate_age(DOB) as Age From Emp_udf;