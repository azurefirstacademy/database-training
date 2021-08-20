/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ProductGroupName],[productname],
count(*)
  FROM [agroanalytics].[source_data].[DAILY_PRICING]
  group by [ProductGroupName],[productname]

  select * FROM [source_data].[DAILY_PRICING]
  where [productname]='Ajwan'

SELECT *
FROM [source_data].[DAILY_PRICING]
WHERE ProductGroupName='Spices'
AND ProductName='Coconut'
AND Minimum_Prices_in_Rs_quintals = 
(
select 
MIN(Minimum_Prices_in_Rs_quintals) as coconut_min_price
--max(Minimum_Prices_in_Rs_quintals) as coconut_max_price
FROM [source_data].[DAILY_PRICING]
WHERE ProductGroupName='Spices'
AND ProductName='Coconut'
GROUP BY ProductName
)
UNION
SELECT *
FROM [source_data].[DAILY_PRICING]
WHERE ProductGroupName='Spices'
AND ProductName='Coconut'
AND Minimum_Prices_in_Rs_quintals = 
(
select 
max(Minimum_Prices_in_Rs_quintals) as coconut_max_price
FROM [source_data].[DAILY_PRICING]
WHERE ProductGroupName='Spices'
AND ProductName='Coconut'
GROUP BY ProductName
)


SELECT *
FROM [source_data].[DAILY_PRICING]
WHERE ProductGroupName='Spices'
AND ProductName='Coconut'  

select ProductName,
sum(Minimum_Prices_in_Rs_quintals) as coconut_sum_price
FROM [source_data].[DAILY_PRICING]
WHERE ProductGroupName='Spices'
AND ProductName='Coconut'
GROUP BY ProductName

select ProductName,
Minimum_Prices_in_Rs_quintals
FROM [source_data].[DAILY_PRICING]
WHERE ProductGroupName='Spices'
AND ProductName='Coconut'




select * INTO [source_data].[BKP_DAILY_PRICING]
from [source_data].[DAILY_PRICING]
