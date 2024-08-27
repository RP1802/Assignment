use classicmodels;
create table project (EmployeeID int primary key,FullName varchar(250),
Gender enum("male","female"),ManagerID int);
insert into project(EmployeeID,FullName,Gender,managerid) values(1, 'Pranaya', 'Male', 3),
																(2,'Priyanka', 'Female', 1),
                                                                (3, 'Preety', 'Female', NULL),
                                                                (4, 'Anurag', 'Male', 1),
                                                                (5, 'Sambit', 'Male', 1),
                                                                (6, 'Rajesh', 'Male', 3),
																(7, 'Hina', 'Female', 3);
                                                               

select m.fullname as "ManagerName", e.fullname as "EmployeeName"
from Project m
inner join project e on 
e.managerid = m.employeeid
order by "ManagerName";
