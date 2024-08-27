use classicmodels;
select * from orders;
select
year(orderdate) as orderyear,
concat('Q',quarter(orderdate)) as Quarter,
 

count(distinct customernumber) as uniquecustomer,
count(*) as Totalorders
from orders
group by orderyear,Quarter
order by orderyear,quarter;
