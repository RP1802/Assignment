use classicmodels;
select * from customers;
select * from employees;
select employeeNumber,concat(firstname,' ',lastname) as sales_Person,count(distinct(customername)) as UniqueCustomer
from employees
left join
customers on 
employeenumber = salesRepEmployeeNumber

group by employeeNumber,sales_person
order by UniqueCustomer desc;