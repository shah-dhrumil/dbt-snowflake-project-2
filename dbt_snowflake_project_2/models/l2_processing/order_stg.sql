select OrderID,
         OrderDate,
         CustomerID,
         EmployeeID,
         StoreID,
         Status,
         case when Status='01' then 'Shipped'
              when Status='02' then 'Pending'
              when Status='03' then 'Delivered'
              when Status='04' then 'Processing'
              when Status='05' then 'Cancelled'
              else 'Unknown' end as StatusDesc,
         Updated_at 
from {{ source('landing', 'orders') }}