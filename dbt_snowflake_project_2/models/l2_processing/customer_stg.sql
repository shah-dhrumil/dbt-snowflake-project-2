select CustomerID,
         FirstName,
         LastName,
         Email,
         Phone,
         Address,
         City,
         State,
         ZipCode,
         Updated_at,
         concat(FirstName, ' ', LastName) as CustomeName
from {{ source('landing', 'customers') }}