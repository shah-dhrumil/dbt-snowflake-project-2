select O.OrderID,
       O.OrderDate,
       O.CustomerID,
       O.EmployeeID,
       O.StoreID,
       O.Status,
       O.StatusDesc,
       O.Updated_at,
       count(distinct o.OrderID) as OrderCount,
       sum(oi.totalprice) as TotalSales
from {{ ref('order_stg') }} o
join {{ ref('orderitems_stg') }} oi
on o.OrderID = oi.OrderID
group by 1,2,3,4,5,6,7,8