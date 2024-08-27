-- day6
use day6;
create database Day6;
create table journey(Bus_id varchar(50) not Null,
					 Bus_Name varchar(50) not null,
                     Source_Station varchar(50)not null,
                     Destination varchar(50)not null,
                     Email varchar(50) unique);                 
-- day6.2
create table  vendor(Vendor_Id int primary key,
					Name varchar(50) not null,
                    Email varchar(50) unique,
                    Country varchar(50) default('N/A'));
                    
                    
-- day6.3
create table Movie (Movie_Id Int primary key,
					Name varchar(50) Not null,
                    Release_Year varchar(50) default('-'),
                    cast varchar(50) not null,
                    Gender enum("male","Female"),
                    No_Of_Shows int check(No_Of_Shows >=0)
                    );
                    
                    
-- day6.4
create table Product (product_id int primary key auto_increment,
					 productname varchar(50) not null unique,
                     description varchar(50),
                     supplier_id int,
                     foreign key (supplier_id) references suppliers(supplier_id));
                     
                     
create table suppliers (supplier_id int primary key auto_increment,
						suppliername varchar(50),
                        location varchar(50));
                        
create table stock	  (Stock_id int primary key auto_increment,
					  balance_stock varchar(50),
                      product_id int,
                      foreign key (product_id) references Product(product_id) );
                        
