use classicmodels;
select customernumber,customerName
from customers
where customerNumber Not In (select customerNumber from orders);