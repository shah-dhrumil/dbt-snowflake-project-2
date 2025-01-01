select OrderID,
         OrderDate,
         CustomerID,
         EmployeeID,
         StoreID,
         Status,
         case when Status='01' then 'In Progress'
              when Status='02' then 'Completed'
              when Status='03' then 'Cancelled'
              else 'Unknown' end as StatusDesc,
         Updated_at 
from {{ source('landing', 'orders') }}