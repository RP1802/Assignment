use classicmodels;
select ordernumber,max(quantityOrdered) as Quantityorders
from orderdetails o
where quantityOrdered <(
select  max(quantityOrdered)
from orderdetails od
where od.ordernumber=o.orderNumber
)
group by orderNumber;
select * from orderdetails;