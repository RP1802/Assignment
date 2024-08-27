use classicmodels;
create view Product_status as select
year(o.orderdate) as Year ,
 concat(round(count(od.quantityordered * od.priceEach)),' (',
round((sum(od.quantityordered * od.priceEach)/sum(sum(od.quantityordered * od.priceEach))over())*100),'%)') as "Tota Values"

from orders o
join  orderdetails od 
on o.ordernumber = od.ordernumber
group by year(o.orderdate);
select * from orders;
select * from orderdetails;
select * from product_status;