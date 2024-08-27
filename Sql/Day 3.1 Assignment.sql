use classicmodels;
select
customernumber,customername,state,creditlimit 
from customers
where state is not null and
creditlimit between 50000 and 100000
order by creditlimit desc;
 