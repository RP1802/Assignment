create database day_14;
use day_14;

create table Emp_EH(EmpID int primary Key,
					EmpName varchar(250),
                    EmailAddress varchar(250));
delimiter //
create procedure Emp_Eh_Handling (in in_EmpId int,in_empname varchar(250),in_EmailAddress varchar(250))
as
begin
	begin try
		insert into emp_eh(empid,empname,emailaddress);
        print 'values Inserted Succefully'
	end try
    begin catch
		print 'Error occured';
	end catch
    
end //

delimiter ;
    
