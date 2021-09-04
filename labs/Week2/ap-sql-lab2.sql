create schema source_data

create TABLE source_data.DAILY_PRICING (
ProductGroupName varchar(100),
ProductName varchar(100),
statename varchar(100),
Market_Center varchar(100),
Arrivals_in_Tonnes decimal(16,2),
Unit_of_Arrivals char(6),
Origin varchar(100),
Variety varchar(100),
Minimum_Prices_in_Rs_Quintals decimal(16,2),
maximum_Prices_in_Rs_Quintals decimal(16,2),
Modal_Prices_in_Rs_Quintals decimal(16,2),
Unit_of_Prices char(10)
)
alter Table source_data.DAILY_PRICING add price_date date

go
INSERT INTO source_data.DAILY_PRICING values (
'Cereals',
'Amphophalus',
'Kerala',
'Alappuzha',
1,
'Tonnes',
'NR',
'Other',
2750,
2850,
2800,
'Rs/Quintal',
'01/01/2019'
)
go
Insert into source_data.DAILY_PRICING values (
'Cereals',
'Amphophalus',
'Kerala',
'Angamaly',
0.2,
'Tonnes',
'NR',
'Amphophalus',
3000,
3400,
3200,
'Rs/Quintal',
'01/01/2019'
)
go
Insert into source_data.DAILY_PRICING
(
ProductGroupName,
ProductName,
statename,
Market_Center,
price_date
)
values (
'Cereals',
'Amphophalus',
'Kerala',
'Aroor',
'01/01/2019'
)
go

Update source_data.DAILY_PRICING
Set
Arrivals_in_Tonnes=0.2,
Unit_of_Arrivals='Tonnes',
Origin='NR',
Variety='Amphophalus',
Minimum_Prices_in_Rs_Quintals=2000,
maximum_Prices_in_Rs_Quintals=2200,
Modal_Prices_in_Rs_Quintals=2100,
Unit_of_Prices='Rs/Quintal'
where
Market_Center='Aroor'

go
insert into source_data.DAILY_PRICING values (
'Cereals',
'Amphophalus',
'Kerala',
'Chengannu',
2.5,
'Tonnes',
'NR',
'Other',
2300,
2600,
2500,
'Rs/Quintal',
'01/01/2019'
)
go

Insert into source_data.DAILY_PRICING values (
'Cereals',
'Amphophalus',
'Kerala',
'Ernakulam',
0.25,
'Tonnes',
'NR',
'Amphophalus',
1600,
2300,
2000,
'Rs/Quintal',
'01/01/2019'
)
go

Insert into source_data.DAILY_PRICING
(
ProductGroupName,
ProductName,
statename,
Market_Center,
price_date
)
Values (
'Cereals',
'Amphophalus',
'Kerala',
'Harippad',
'01/01/2019'
)
go

update source_data.DAILY_PRICING
set
Arrivals_in_Tonnes=1,
Unit_of_Arrivals='Tonnes',
Origin='NR',
Variety='Other',
Minimum_Prices_in_Rs_Quintals=3500,
maximum_Prices_in_Rs_Quintals=4000,
Modal_Prices_in_Rs_Quintals=4000,
Unit_of_Prices='Rs/Quintal'
where
Market_Center='Harippad'
go

Insert into source_data.DAILY_PRICING values (
'Cereals',
'Amphophalus',
'Kerala',
'Kallachi',
0.4,
'Tonnes',
'NR',
'Amphophalus',
2600,
3000,
2800,
'Rs/Quintal',
'01/01/2019'
)
go

Insert into source_data.DAILY_PRICING values(
'Cereals',
'Amphophalus',
'Kerala',
'Kanjirappally',
1.25,
'Tonnes',
'NR',
'Other',
2500,
3000,
2800,
'Rs/Quintal',
'01/01/2019'
)
go

Insert into source_data.DAILY_PRICING 
(
ProductGroupName,
ProductName,
statename,
Market_Center,
price_date
)
Values
(
'Cereals',
'Amphophalus',
'Kerala',
'Kayamkulam',
'01/01/2019'
)
go
Update source_data.DAILY_PRICING
set
Arrivals_in_Tonnes=2,
Unit_of_Arrivals='Tonnes',
Origin='NR',
Variety='Other',
Minimum_Prices_in_Rs_Quintals=2100,
maximum_Prices_in_Rs_Quintals=2300,
Modal_Prices_in_Rs_Quintals=2200,
Unit_of_Prices='Rs/Quintal'
where
Market_Center='Kayamkulam'
go

Insert into source_data.DAILY_PRICING values (
'Cereals',
'Amphophalus',
'Kerala',
'Kollam',
0.5,
'Tonnes',
'NR',
'Other',
2000,
2200,
2100,
'Rs/Quintal',
'01/01/2019'
)
select * from source_data.DAILY_PRICING

SELECT DISTINCT ProductGroupName 
into source_data.Product_Group
from source_data.DAILY_PRICING
ALTER TABLE [agro analytics].[source_data].[Product_Group]
ADD ProductGroupKey int identity(1,1); 
ALTER TABLE [agro analytics].[source_data].[Product_Group]
ADD	PRIMARY KEY(ProductGroupKey);
SELECT * FROM [agro analytics].[source_data].[Product_Group]

SELECT DISTINCT ProductName 
into source_data.Product_Name
from source_data.DAILY_PRICING
ALTER TABLE [agro analytics].[source_data].[Product_Name]
ADD ProductNameKey int identity(1,1);
ALTER TABLE [agro analytics].[source_data].[Product_Name]
ADD PRIMARY KEY(ProductNameKey);
SELECT * FROM [agro analytics].[source_data].[Product_Name]

SELECT DISTINCT statename
into source_data.State_Name
from source_data.DAILY_PRICING
ALTER TABLE [agro analytics].[source_data].[State_Name]
ADD StateNameKey int identity(1,1);
ALTER TABLE [agro analytics].[source_data].[State_Name]
ADD PRIMARY KEY(StateNameKey);
SELECT * FROM source_data.State_Name

SELECT DISTINCT Market_Center 
into source_data.MarketCenter 
from source_data.DAILY_PRICING
ALTER TABLE [agro analytics].[source_data].[MarketCenter]
ADD MarketCenterKey int identity(1,1);
ALTER TABLE [agro analytics].[source_data].[MarketCenter]
ADD PRIMARY KEY(MarketCenterKey);
SELECT * FROM source_data.MarketCenter

SELECT DISTINCT Unit_of_Arrivals 
into source_data.UnitofArrivals
from source_data.DAILY_PRICING
ALTER TABLE [agro analytics].[source_data].[UnitofArrivals]
ADD UnitofArrivalsKey int identity(1,1);
ALTER TABLE [agro analytics].[source_data].[UnitofArrivals]
ADD PRIMARY KEY(UnitofArrivalsKey);
SELECT * FROM source_data.UnitofArrivals

SELECT DISTINCT Variety
into source_data.Variety
from source_data.DAILY_PRICING
ALTER TABLE [agro analytics].[source_data].[Variety]
ADD VarietyKey int identity(1,1);
ALTER TABLE [agro analytics].[source_data].[Variety]
ADD PRIMARY KEY(VarietyKey);
SELECT * FROM source_data.VARIETY

SELECT DISTINCT Unit_of_Prices
into source_data.UnitofPrices 
from source_data.DAILY_PRICING
ALTER TABLE [agro analytics].[source_data].[UnitofPrices]
ADD UnitofPricesKey int identity(1,1);
ALTER TABLE [agro analytics].[source_data].[UnitofPrices]
ADD PRIMARY KEY(UnitofPricesKey);
SELECT * FROM source_data.UnitofPrices

SELECT DISTINCT price_date
into source_data.Pricedate 
from source_data.DAILY_PRICING
ALTER TABLE [agro analytics].[source_data].[Pricedate]
ADD PricedateKey int identity(1,1);
ALTER TABLE [agro analytics].[source_data].[Pricedate]
ADD PRIMARY KEY(PricedateKey);
SELECT * FROM source_data.Pricedate

SELECT DISTINCT Origin
into source_data.Origin 
from source_data.DAILY_PRICING
ALTER TABLE [agro analytics].[source_data].[Origin]
ADD OriginKey int identity(1,1);
ALTER TABLE [agro analytics].[source_data].[Origin]
ADD PRIMARY KEY(OriginKey);
SELECT * FROM source_data.Origin

SELECT ProductGroupKey,
ProductNameKey, 
StateNameKey, MarketCenterKey, 
Arrivals_in_Tonnes, 
UnitofArrivalsKey, OriginKey,
VarietyKey, 
Minimum_Prices_in_Rs_Quintals, 
maximum_Prices_in_Rs_Quintals, 
Modal_Prices_in_Rs_Quintals, 
UnitofPricesKey, 
PricedateKey
into source_data.DAILY_PRICING_NEW from source_data.DAILY_PRICING 
INNER JOIN source_data.Product_Group 
ON DAILY_PRICING.ProductGroupName = source_data.Product_Group.ProductGroupName
INNER JOIN source_data.Product_Name 
ON DAILY_PRICING.ProductName = source_data.Product_Name.ProductName
INNER JOIN source_data.State_Name 
ON DAILY_PRICING.statename = source_data.State_Name.statename
INNER JOIN source_data.MarketCenter 
ON DAILY_PRICING.Market_Center = source_data.MarketCenter.Market_Center
INNER JOIN source_data.UnitofArrivals 
ON DAILY_PRICING.Unit_of_Arrivals = source_data.UnitofArrivals.Unit_of_Arrivals
INNER JOIN source_data.Variety 
ON DAILY_PRICING.Variety = source_data.Variety.Variety
INNER JOIN source_data.UnitofPrices 
ON DAILY_PRICING.Unit_of_Prices = source_data.UnitofPrices.Unit_of_Prices
INNER JOIN source_data.Pricedate 
ON DAILY_PRICING.price_date = source_data.Pricedate.price_date
INNER JOIN source_data.Origin 
ON DAILY_PRICING.Origin = source_data.Origin.Origin
SELECT * FROM source_data.DAILY_PRICING_NEW