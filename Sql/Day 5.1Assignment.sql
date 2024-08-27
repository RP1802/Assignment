use classicmodels;
select * from payments;
select year(paymentdate) as PaymentYear,min(amount) as MinAmount
from payments
group by Paymentyear
order by paymentyear;