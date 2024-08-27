use classicmodels;
select monthname(paymentdate) As Month,
		concat(Format(sum(amount)/1000,0),'K') as Formattedamount
        from payments
        group by month
        having sum(amount) between 500000 and 1000000
        order by sum(amount) desc;