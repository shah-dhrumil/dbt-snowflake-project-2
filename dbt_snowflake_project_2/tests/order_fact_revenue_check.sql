select OrderID 
from {{ ref('orders_fact')}}
where TotalSales < 0