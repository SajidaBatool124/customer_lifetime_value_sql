select count(distinct customerNumber) as Total_customer 
from customers;

select count(distinct orderNumber) as Total_transactions
from orders;

select sum(od.quantityOrdered * od.priceEach) as Total_revenue
from orderdetails as od;

select 
sum(od.quantityOrdered * od.priceEach) / count(distinct o.orderNumber) as Average_purchase_value
from orders as o 
join orderdetails as od on o.orderNumber = od.orderNumber;

select 
count(distinct orderNumber) * 1 / count(distinct customerNumber) as avg_purchase_frequency
from orders as o;

select 
     round(avg(lifespan_years), 4) as avg_lifespan_years
from (
     select 
     customerNumber,
     datediff(max(orderDate), min(orderDate)) / 365 as lifespan_years 
     from orders 
     group by customerNumber
     ) as customer_lifespans;
    
    
    
WITH lifespan AS (
    SELECT 
        customerNumber,
        DATEDIFF(MAX(orderDate), MIN(orderDate)) / 365.0 AS lifespan_years
    FROM orders
    GROUP BY customerNumber
),
metrics AS (
    SELECT 
        SUM(od.quantityOrdered * od.priceEach) / COUNT(DISTINCT o.orderNumber) AS avg_purchase_value,
        COUNT(DISTINCT o.orderNumber) * 1.0 / COUNT(DISTINCT o.customerNumber) AS avg_purchase_frequency
    FROM orders o
    JOIN orderdetails od ON o.orderNumber = od.orderNumber
),
avg_lifespan AS (
    SELECT ROUND(AVG(lifespan_years), 4) AS avg_lifespan_years
    FROM lifespan
)
SELECT 
    ROUND(
        m.avg_purchase_value * m.avg_purchase_frequency * 0.6 * a.avg_lifespan_years - 100,
        2
    ) AS clv
FROM metrics m, avg_lifespan a;