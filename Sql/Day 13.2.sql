use classicmodels;
select C.customernumber,c.customername,count(o.ordernumber) as Total_Orders
from Customers c
left outer join orders o on C.customernumber = o.customernumber
group by C.customernumber,C.customername

union
select C.customernumber,C.customername,0 as Total_Orders
from customers c
where C.customernumber not in (select distinct customernumber from orders)

union
select o.customernumber, null as customername,count(o.customernumber) as Total_Orders
from orders o
where o.customernumber not in (select distinct customernumber from Customers)
group by o.customernumber;
