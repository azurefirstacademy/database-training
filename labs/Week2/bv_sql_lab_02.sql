SELECT * FROM storage_data.DAILY_PRICING

SELECT DISTINCT ProductGroupName into storage_data.PRODUCT_GROUP from storage_data.DAILY_PRICING
ALTER TABLE [Market].[storage_data].[PRODUCT_GROUP]
ADD ProductGroupKey int identity(1,1); 
ALTER TABLE [Market].[storage_data].[PRODUCT_GROUP]
ADD	PRIMARY KEY(ProductGroupKey);
SELECT * FROM [Market].[storage_data].[PRODUCT_GROUP]

SELECT DISTINCT ProductName into storage_data.PRODUCT from storage_data.DAILY_PRICING
ALTER TABLE [Market].[storage_data].[PRODUCT]
ADD ProductKey int identity(1,1);
ALTER TABLE [Market].[storage_data].[PRODUCT]
ADD PRIMARY KEY(ProductKey);
SELECT * FROM [Market].[storage_data].[PRODUCT]

SELECT DISTINCT StateName into storage_data.STATE_ from storage_data.DAILY_PRICING
ALTER TABLE [Market].[storage_data].[STATE_]
ADD StateKey int identity(1,1);
ALTER TABLE [Market].[storage_data].[STATE_]
ADD PRIMARY KEY(StateKey);
SELECT * FROM storage_data.STATE_

SELECT DISTINCT Market_Center into storage_data.MARKET from storage_data.DAILY_PRICING
ALTER TABLE [Market].[storage_data].[MARKET]
ADD MarketKey int identity(1,1);
ALTER TABLE [Market].[storage_data].[MARKET]
ADD PRIMARY KEY(MarketKey);
SELECT * FROM storage_data.MARKET

SELECT DISTINCT Unit_of_Arrivals into storage_data.ARRIVAL from storage_data.DAILY_PRICING
ALTER TABLE [Market].[storage_data].[ARRIVAL]
ADD ArrivalKey int identity(1,1);
ALTER TABLE [Market].[storage_data].[ARRIVAL]
ADD PRIMARY KEY(ArrivalKey);
SELECT * FROM storage_data.ARRIVAL

SELECT DISTINCT Variety into storage_data.VARIETY from storage_data.DAILY_PRICING
ALTER TABLE [Market].[storage_data].[VARIETY]
ADD VarietyKey int identity(1,1);
ALTER TABLE [Market].[storage_data].[VARIETY]
ADD PRIMARY KEY(VarietyKey);
SELECT * FROM storage_data.VARIETY

SELECT DISTINCT Unit_of_Price into storage_data.PRICE from storage_data.DAILY_PRICING
ALTER TABLE [Market].[storage_data].[PRICE]
ADD PriceKey int identity(1,1);
ALTER TABLE [Market].[storage_data].[PRICE]
ADD PRIMARY KEY(PriceKey);
SELECT * FROM storage_data.PRICE

SELECT DISTINCT price_date into storage_data.DATE_ from storage_data.DAILY_PRICING
ALTER TABLE [Market].[storage_data].[DATE_]
ADD DateKey int identity(1,1);
ALTER TABLE [Market].[storage_data].[DATE_]
ADD PRIMARY KEY(DateKey);
SELECT * FROM storage_data.DATE_


--This can also be used to insert unique values to normalized tables
--Insert into storage_data.PRODUCT
--SELECT DISTINCT ProductName from storage_data.DAILY_PRICING

SELECT ProductGroupKey, ProductKey, StateKey, MarketKey,Arrivals_in_tonnes,ArrivalKey,Origin,VarietyKey, Minimum_Prices_in_Rs_quintals, Maximum_Prices_in_Rs_quintals, Modal_Prices_in_Rs_quintals, PriceKey, DateKey  into storage_data.DAILY_PRICING_NEW from storage_data.DAILY_PRICING 
INNER JOIN storage_data.PRODUCT_GROUP ON DAILY_PRICING.ProductGroupName = storage_data.PRODUCT_GROUP.ProductGroupName
INNER JOIN storage_data.PRODUCT ON DAILY_PRICING.ProductName = storage_data.PRODUCT.ProductName
INNER JOIN storage_data.STATE_ ON DAILY_PRICING.StateName = storage_data.STATE_.StateName
INNER JOIN storage_data.MARKET ON DAILY_PRICING.Market_Center = storage_data.MARKET.Market_Center
INNER JOIN storage_data.ARRIVAL ON DAILY_PRICING.Unit_of_Arrivals = storage_data.ARRIVAL.Unit_of_Arrivals
INNER JOIN storage_data.VARIETY ON DAILY_PRICING.Variety = storage_data.VARIETY.Variety
INNER JOIN storage_data.PRICE ON DAILY_PRICING.Unit_of_Price = storage_data.PRICE.Unit_of_Price
INNER JOIN storage_data.DATE_ ON DAILY_PRICING.price_date = storage_data.DATE_.price_date

SELECT * FROM storage_data.DAILY_PRICING_NEW