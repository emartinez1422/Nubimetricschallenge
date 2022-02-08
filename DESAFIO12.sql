
--desafio12
  select d.[Name] as country_name,
         f.[Name] as currency_name,
		 Round(avg(E.AverageRate), 2, 0)  AS currency_rate,
         Round(AVG(b.[TaxRate]), 2, 0) as average_taxRate

  FROM [AdventureWorks2014].[Person].[StateProvince] a
        inner join [AdventureWorks2014].[Sales].[SalesTaxRate] b
        on a.StateProvinceID=b.StateProvinceID
	    inner join [AdventureWorks2014].[Sales].[CountryRegionCurrency] c
	    on c.CountryRegionCode = a.CountryRegionCode
		inner join  [AdventureWorks2014].[Person].[CountryRegion] d
		on c.CountryRegionCode=d.CountryRegionCode
		inner join[AdventureWorks2014].[Sales].[Currency]  f
		on c.CurrencyCode=f.CurrencyCode
		INNER JOIN [AdventureWorks2014].[Sales].[CurrencyRate] E
		ON E.ToCurrencyCode =F.CurrencyCode


  group by d.[Name] ,f.[Name]
  order by d.[Name] asc

 



  ----------------------------------------------
  /*
  select * FROM [AdventureWorks2014].[Person].[StateProvince]

  select * FROM[AdventureWorks2014].[Sales].[SalesTaxRate] 

  SELECT * FROM [AdventureWorks2014].[Sales].[CountryRegionCurrency]

  SELECT * FROM [AdventureWorks2014].[Person].[CountryRegion]


  SELECT * FROM [AdventureWorks2014].[Sales].[CurrencyRate]

  SELECT * FROM [AdventureWorks2014].[Sales].[Currency]
*/