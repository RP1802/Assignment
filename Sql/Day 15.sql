create database Day15;
use day15;
create table  Emp_BIT(Name varchar(250),
					 Occupation varchar(250),
                     Working_date varchar(50),
                     Working_hours varchar(50));
insert into Emp_BIT values 
							('Robin', 'Scientist', '2020-10-04', 12),  
							('Warner', 'Engineer', '2020-10-04', 10),  
							('Peter', 'Actor', '2020-10-04', 13),  
							('Marco', 'Doctor', '2020-10-04', 14),  
							('Brayden', 'Teacher', '2020-10-04', 12),  
							('Antonio', 'Business', '2020-10-04', 11);  


select * from Emp_BIT;

delimiter //
create trigger emp_bit_insert
before insert on
emp_bit
for each row begin
if new.Working_hours < 0 then
set new.Working_hours = -new.Working_hours;
end if;
end //
delimiter ;