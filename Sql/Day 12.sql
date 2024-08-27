use classicmodels;
WITH X AS (

select year(orderDate) as Year,monthname(orderDate) as month,
	   count(orderNumber) as Total_Orders
from orders
group by YEAR,MONTH
)
select year,month,Total_Orders as 'Total orders',

       concat
       (round
       ((100*(Total_Orders-lag(Total_Orders)over (order by year)))/lag(Total_Orders)over (order by year),0),'%') as '%YoY Change'
       from x;

