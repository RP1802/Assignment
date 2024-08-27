use classicmodels;
create table laptop (laptop_name varchar(250));
insert into laptop(laptop_name) values ('dell'),('HP'),('Acer'),('Asus'),('Lenevo');
select * from laptop;

create table colour(Laptop_colour varchar(250));
insert into colour(laptop_colour) values ("White"),("Black"),("Silver"),("Gold"),("Gray");
select 
laptop.laptop_name,colour.laptop_colour from laptop
cross join  colour;