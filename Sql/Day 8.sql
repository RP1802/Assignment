create database Day8;
use day8;
create table Facility(Facility_ID int,
					Name varchar(100),
					State varchar(100),
					Country varchar(100));
alter table facility
modify facility_Id int primary key auto_increment;

alter table Facility
add city varchar (100) not null; 