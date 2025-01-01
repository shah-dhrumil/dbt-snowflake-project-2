SELECT o.StoreID
    ,sum(ofact.TotalSales) as TotalSales
    ,sum(St.SalesTarget) as SalesTarget
FROM {{ ref('order_stg') }} o
join {{ ref('orders_fact')}} ofact 
on o.OrderID = ofact.OrderID
join {{ ref('QuarterlySalesTarget')}} St
on o.StoreID = St.StoreID
group by 1