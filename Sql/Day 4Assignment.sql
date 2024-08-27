use classicmodels;
select orderNumber,status,ifnull(comments,'-') as comments from orders
where status='shipped';
