use classicmodels;
select * from customers;
select * from orders;
select * from orderdetails;
select * from products;
select customers.customernumber,
	   customers.customername,
       products.productCode,
       products.productName,
       sum(QuantityOrdered) as OrderedQuantity,
       sum(quantityInStock) as TotalInventory,
       sum(quantityInStock-QuantityOrdered) as LeftQuantity
       from customers
		join orders on
       customers.customerNumber = orders.customerNumber
        join
       orderdetails on 
       orders.ordernumber = orderdetails.ordernumber
        join
       products on
       orderdetails.productcode = products.productcode
       group by customernumber,productcode
       order by customernumber asc;
       
       
       
       
       