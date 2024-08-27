use classicmodels;
select orderNumber, count(orderNumber) as TotalProducts from orderdetails

having count(orderNumber)>0;
select max(TotalProducts) As Max_Total,
	   min(TotalProducts) AS Min_Total
from (
	select ordernumber,
    count(ordernumber) as Totalproducts
from orderdetails
group by orderNumber
having count(ordernumber) > 0
) as Productcounts;
