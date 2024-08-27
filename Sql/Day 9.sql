create database day9;
use day9;
create table University (ID int,Name varchar(100));

INSERT INTO University
VALUES (1, "       Pune          University     "), 
               (2, "  Mumbai          University     "),
              (3, "     Delhi   University     "),
              (4, "Madras University"),
              (5, "Nagpur University");
 set Sql_safe_updates=0;             
update  university
set 
name=replace(Name,' ','  ');

select * from University;