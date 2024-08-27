use classicmodels;
select productLine, count(*) as Total
from products where buyprice <(
select avg (buyprice)
from products)
group by productline;
select * from productlines;