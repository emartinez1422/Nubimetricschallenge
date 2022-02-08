  --DESAFIO 11
  
  select b.[CountryRegionCode] as country_region_code,
         AVG(a.[TaxRate]) as average_taxRate
  FROM [AdventureWorks2014].[Person].[StateProvince] b
       inner join [AdventureWorks2014].[Sales].[SalesTaxRate] a
       on a.StateProvinceID=b.StateProvinceID
  group by b.[CountryRegionCode]
 