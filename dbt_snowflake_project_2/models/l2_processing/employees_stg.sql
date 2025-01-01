select EmployeeID,
         FirstName,
         LastName,
         Email,
         JobTitle,
         HireDate,
         ManagerID
         Address,
         City,
         State,
         ZipCode,
         Updated_at,
         concat(FirstName, ' ', LastName) as EmployeeName 
from {{ source('landing', 'employees') }}