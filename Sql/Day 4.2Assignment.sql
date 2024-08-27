use classicmodels;
select * from employees;
select employeeNumber,firstname,jobTitle,
case 
when jobtitle = "President" then "P"
when jobtitle = ("Sales Manager" or "Sale Manager") then "SM"
when jobtitle = "Sales Rep" then "SR"
when jobtitle = "VP"  then "VP"
end as jobtitleabbrivation
from employees;

