select o.CustomerID
    ,c.CustomeName
    ,sum(o.OrderCount) as OrderCount
    ,sum(o.TotalSales) as TotalRevenue
from {{ ref('orders_fact') }} o
join {{ ref('customer_stg') }} c
on o.CustomerID = c.CustomerID
group by 1,2
