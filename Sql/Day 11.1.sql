use classicmodels;
delimiter //
create procedure GetCustomerLevel ( in Cust_NO int)
begin
declare ct_creditlimit int;
select creditlimit
into ct_creditlimit
from customers
where customernumber = Cust_No;
case 
when ct_creditlimit > 100000 then 
select 'Platinium' as Result ;
when ct_creditlimit between 100000 and 25000 then
select 'Gold' as result;
when ct_creditlimit <25000 then 
select 'Silver' as result;
else
select 'Out Of Range' as Result;
end case;
end //
delimiter ;
drop procedure GetCustomerLevel;

