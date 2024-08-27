use classicmodels;
delimiter //
	create procedure country_payments (in in_year int,in_country varchar(100))
begin
	select year(PaymentDate) as Year ,
		country as country,
        concat(format(sum(amount)/1000,0),'K') as Total_Amount
        from Payments
        inner join customers on 
        payments.customernumber = customers.customernumber
        where Year(paymentDate) = in_Year 
			and country = in_country
	group by Year,Country;
end //
delimiter ;

call classicmodels.country_payments(2003, 'France');
